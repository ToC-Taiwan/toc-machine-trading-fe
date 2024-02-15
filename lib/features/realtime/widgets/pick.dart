import 'dart:async';

import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:toc_machine_trading_fe/core/api/api.dart';
import 'package:toc_machine_trading_fe/core/pb/app/app.pb.dart' as pb;
import 'package:toc_machine_trading_fe/core/pb/forwarder/mq.pb.dart' as pb;
import 'package:toc_machine_trading_fe/features/realtime/entity/pick_operation.dart';
import 'package:toc_machine_trading_fe/features/realtime/entity/snapshot.dart';
import 'package:toc_machine_trading_fe/features/realtime/entity/stock.dart';
import 'package:toc_machine_trading_fe/features/realtime/pages/kbar.dart';
import 'package:toc_machine_trading_fe/features/realtime/repo/pick_stock.dart';
import 'package:toc_machine_trading_fe/features/universal/utils/utils.dart';
import 'package:toc_machine_trading_fe/features/universal/widgets/text.dart';
import 'package:wakelock/wakelock.dart';
import 'package:web_socket_channel/io.dart';

class PickStockWidget extends StatefulWidget {
  const PickStockWidget(this.streamController, this.isOdd, {super.key});

  final StreamController<PickStockModifiyBody> streamController;
  final bool isOdd;

  @override
  State<PickStockWidget> createState() => _PickStockWidgetState();
}

class _PickStockWidgetState extends State<PickStockWidget> {
  late IOWebSocketChannel? _channel;
  late Future<List<pb.StockRealTimeTickMessage>?> realTimeData;

  Map<String, int> stockOrder = {};
  Map<String, Stock> stockDetailMap = {};

  @override
  void initState() {
    super.initState();
    widget.streamController.stream.listen((event) {
      if (!mounted) {
        return;
      }
      if (event.operationType == OperationType.add && event.addStock != null) {
        addStock(event.addStock!).catchError((e) {
          String errMsg = '';
          switch (e as int) {
            case -1:
              errMsg = AppLocalizations.of(context)!.not_found;
              break;
            case -2:
              errMsg = AppLocalizations.of(context)!.not_found;
              break;
            case -3:
              errMsg = AppLocalizations.of(context)!.stock_already_exists;
              break;
            default:
              errMsg = AppLocalizations.of(context)!.not_found;
          }
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                errMsg,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.red),
              ),
              duration: const Duration(seconds: 2),
            ),
          );
        });
      } else if (event.operationType == OperationType.removeAll) {
        removeAllStock();
      }
    });
    Wakelock.enable();
    realTimeData = fillStockList();
    initialWS();
  }

  @override
  void setState(VoidCallback fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  @override
  void dispose() {
    _channel!.sink.close();
    Wakelock.disable();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<pb.StockRealTimeTickMessage>?>(
      future: realTimeData,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView.separated(
            primary: false,
            separatorBuilder: (context, index) => const Divider(height: 0),
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              return Slidable(
                key: ValueKey(snapshot.data![index].code),
                endActionPane: ActionPane(
                  motion: const ScrollMotion(),
                  extentRatio: 0.25,
                  children: [
                    SlidableAction(
                      onPressed: (BuildContext ctx) => removeStock(snapshot.data![index].code),
                      backgroundColor: Colors.redAccent,
                      foregroundColor: Colors.white,
                      icon: Icons.delete,
                      label: AppLocalizations.of(context)!.delete,
                    ),
                  ],
                ),
                child: ListTile(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          fullscreenDialog: true,
                          builder: (context) => KbarPage(
                            code: snapshot.data![index].code,
                            name: stockDetailMap[snapshot.data![index].code]!.name!,
                          ),
                        ),
                      );
                    },
                    dense: true,
                    leading: numberText(
                      snapshot.data![index].code,
                      bold: true,
                    ),
                    title: stockPriceText(
                      stockDetailMap[snapshot.data![index].code]!.name!,
                      snapshot.data![index].chgType.toInt(),
                    ),
                    subtitle: numberText(
                      Utils.commaNumber(snapshot.data![index].totalVolume.toString()),
                      color: Colors.grey,
                    ),
                    trailing: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            flex: 3,
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: stockPriceText(
                                priceChgText(snapshot.data![index].close.abs()),
                                snapshot.data![index].chgType.toInt(),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: snapshot.data![index].priceChg == 0
                                  ? const Icon(Icons.remove, color: Colors.black, size: 20)
                                  : snapshot.data![index].priceChg > 0
                                      ? const Icon(Icons.keyboard_arrow_up_sharp, color: Colors.red, size: 20)
                                      : const Icon(Icons.keyboard_arrow_down_sharp, color: Colors.green, size: 20),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: stockPriceText(
                                priceChgText(
                                  snapshot.data![index].priceChg.abs(),
                                  close: snapshot.data![index].close.abs(),
                                ),
                                snapshot.data![index].chgType.toInt(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
              );
            },
          );
        }
        return Center(
          child: Text(
            AppLocalizations.of(context)!.no_pick_stock,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        );
      },
    );
  }

  Future<void> initialWS() async {
    String url = backendPickWSURLPrefixV2;
    if (widget.isOdd) {
      url = backendPickOddsWSURLPrefixV2;
    }
    _channel = IOWebSocketChannel.connect(
      Uri.parse(url),
      pingInterval: const Duration(seconds: 1),
      headers: {
        "Authorization": API.authKey,
      },
    );
    await _channel!.ready;
    _channel!.stream.listen(
      (message) {
        final msg = pb.StockRealTimeTickMessage.fromBuffer(message as List<int>);
        realTimeData.then((value) {
          if (value == null) {
            return;
          }
          if (stockOrder[msg.code] == null) {
            return;
          }
          setState(() {
            value[stockOrder[msg.code]!] = msg;
          });
        });
      },
      onDone: () {},
      onError: (error) {},
    );
  }

  Future<List<pb.StockRealTimeTickMessage>?> fillStockList() async {
    List<String> dbStock = await PickStockRepo.getAllPickStock();
    if (dbStock.isEmpty) {
      return null;
    }

    List<Stock> stockDetail = await API.fetchStockDetail(dbStock);
    for (final i in stockDetail) {
      if (i.name!.isEmpty) {
        await PickStockRepo.delete(i.number!);
        dbStock.remove(i.number!);
        continue;
      }
      stockDetailMap[i.number!] = i;
    }

    Map<String, SnapShot> snapshots = await API.fetchSnapshots(dbStock);
    if (snapshots.isEmpty) {
      return null;
    }

    List<pb.StockRealTimeTickMessage> result = [];
    Map<String, pb.PickListType> pickMap = {};
    for (final stockNum in dbStock) {
      result.add(_snapshotToPB(snapshots[stockNum]!));
      stockOrder[stockNum] = result.length - 1;
      pickMap[stockNum] = pb.PickListType.TYPE_ADD;
    }
    _channel!.sink.add(pb.PickRealMap(pickMap: pickMap).writeToBuffer());
    return result;
  }

  Future<void> addStock(String stockNum) async {
    List<Stock> dataArr = await API.fetchStockDetail([stockNum]);
    if (dataArr.isEmpty) {
      throw -1;
    }
    Stock data = dataArr[0];
    if (data.name!.isEmpty) {
      throw -2;
    }
    if (stockOrder[stockNum] != null) {
      throw -3;
    }
    await PickStockRepo.insert(stockNum);
    setState(() {
      realTimeData = fillStockList();
    });
  }

  Future<void> removeStock(String stockNum) async {
    await PickStockRepo.delete(stockNum);
    stockOrder.remove(stockNum);
    _channel!.sink.add(pb.PickRealMap(pickMap: {stockNum: pb.PickListType.TYPE_REMOVE}).writeToBuffer());
    setState(() {
      realTimeData = fillStockList();
    });
  }

  Future<void> removeAllStock() async {
    List<String> dbStock = await PickStockRepo.getAllPickStock();
    Map<String, pb.PickListType> pickMap = {};
    for (final stockNum in dbStock) {
      pickMap[stockNum] = pb.PickListType.TYPE_REMOVE;
    }
    _channel!.sink.add(pb.PickRealMap(pickMap: pickMap).writeToBuffer());
    await PickStockRepo.deleteAll();
    stockOrder.clear();
    setState(() {
      realTimeData = fillStockList();
    });
  }

  pb.StockRealTimeTickMessage _snapshotToPB(SnapShot data) {
    return pb.StockRealTimeTickMessage(
      code: data.stockNum,
      close: data.close!.toDouble(),
      priceChg: data.priceChg!.toDouble(),
      totalVolume: Int64(data.volumeSum!),
      // snapshot -- tick_type (TickType): Close is buy or sell price {None, Buy, Sell}
      // pb -- tick_type (int): 內外盤別{1: 外盤, 2: 內盤, 0: 無法判定}
      tickType: data.tickType == "None"
          ? Int64(0)
          : data.tickType == "Buy"
              ? Int64(1)
              : Int64(2),
      // snapshot -- change_type (ChangeType): {LimitUp, Up, Unchanged, Down, LimitDown}
      // pb -- chg_type (int): 漲跌註記{1: 漲停, 2: 漲, 3: 平盤, 4: 跌, 5: 跌停}
      chgType: data.chgType == "LimitUp"
          ? Int64(1)
          : data.chgType == "Up"
              ? Int64(2)
              : data.chgType == "Unchanged"
                  ? Int64(3)
                  : data.chgType == "Down"
                      ? Int64(4)
                      : Int64(5),
    );
  }

  Text stockPriceText(String text, int chgType) {
    Color? color;
    Color? backgroundColor;
    switch (chgType) {
      case 1:
        color = Colors.white;
        backgroundColor = Colors.red;
        break;
      case 2:
        color = Colors.red;
        break;
      case 3:
        color = Colors.black;
        break;
      case 4:
        color = Colors.green;
        break;
      case 5:
        color = Colors.white;
        backgroundColor = Colors.green;
        break;
      default:
        color = Colors.black;
    }

    return numberText(
      text,
      color: color,
      bold: true,
      backgroundColor: backgroundColor,
    );
  }

  String priceChgText(double priceChg, {double? close}) {
    close ??= priceChg;
    if (close >= 0.01 && close < 5) {
      return priceChg.toStringAsFixed(2);
    } else if (close >= 5 && close < 10) {
      return priceChg.toStringAsFixed(2);
    } else if (close >= 10 && close < 50) {
      return priceChg.toStringAsFixed(2);
    } else if (close >= 50 && close < 100) {
      return priceChg.toStringAsFixed(1);
    } else if (close >= 100 && close < 150) {
      return priceChg.toStringAsFixed(1);
    } else if (close >= 150 && close < 500) {
      return priceChg.toStringAsFixed(0);
    } else if (close >= 500 && close < 1000) {
      return priceChg.toStringAsFixed(0);
    } else if (close >= 1000) {
      return priceChg.toStringAsFixed(0);
    }
    return '0';
  }
}
