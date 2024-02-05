import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:toc_machine_trading_fe/core/api/api.dart';
import 'package:toc_machine_trading_fe/core/pb/app/app.pb.dart' as pb;
import 'package:toc_machine_trading_fe/core/pb/forwarder/mq.pb.dart' as pb;
import 'package:toc_machine_trading_fe/features/realtime/entity/snapshot.dart';
import 'package:toc_machine_trading_fe/features/realtime/entity/stock.dart';
import 'package:toc_machine_trading_fe/features/realtime/pages/kbar.dart';
import 'package:toc_machine_trading_fe/features/realtime/repo/pick_stock.dart';
import 'package:toc_machine_trading_fe/features/universal/utils/utils.dart';
import 'package:toc_machine_trading_fe/features/universal/widgets/app_bar.dart';
import 'package:toc_machine_trading_fe/features/universal/widgets/text.dart';
import 'package:wakelock/wakelock.dart';
import 'package:web_socket_channel/io.dart';

class PickStockPage extends StatefulWidget {
  const PickStockPage({super.key});

  @override
  State<PickStockPage> createState() => _PickStockPageState();
}

class _PickStockPageState extends State<PickStockPage> {
  late IOWebSocketChannel? _channel;
  late Future<List<pb.StockRealTimeTickMessage>?> realTimeData;

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final TextEditingController textFieldController = TextEditingController();

  Map<String, int> stockOrder = {};
  Map<String, Stock> stockDetailMap = {};

  @override
  void initState() {
    super.initState();
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
    return Scaffold(
      appBar: topAppBar(
        context,
        AppLocalizations.of(context)!.pick_stock,
        automaticallyImplyLeading: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.delete_forever_rounded),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text(
                    AppLocalizations.of(context)!.delete_all_pick_stock,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  content: Text(AppLocalizations.of(context)!.delete_all_pick_stock_confirm),
                  actions: <Widget>[
                    ElevatedButton(
                      child: Text(
                        AppLocalizations.of(context)!.cancel,
                        style: const TextStyle(color: Colors.red),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    ElevatedButton(
                      onPressed: () {
                        removeAllStock().then((value) {
                          Navigator.pop(context);
                        });
                      },
                      child: Text(
                        AppLocalizations.of(context)!.ok,
                        style: const TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text(
                    AppLocalizations.of(context)!.type_stock_number,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  content: Form(
                    key: _formkey,
                    child: TextFormField(
                      controller: textFieldController,
                      enableSuggestions: false,
                      autocorrect: false,
                      decoration: InputDecoration(
                        hintText: '${AppLocalizations.of(context)!.stock_number}(2330, 2618...)',
                      ),
                      keyboardType: TextInputType.number,
                      autofocus: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return AppLocalizations.of(context)!.input_must_not_empty;
                        }
                        if (value.contains(' ')) {
                          return AppLocalizations.of(context)!.cannot_contain_space;
                        }
                        if (stockOrder[textFieldController.text] != null) {
                          return AppLocalizations.of(context)!.stock_already_exists;
                        }
                        return null;
                      },
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                    ),
                  ),
                  actions: <Widget>[
                    ElevatedButton(
                      child: Text(
                        AppLocalizations.of(context)!.cancel,
                        style: const TextStyle(color: Colors.red),
                      ),
                      onPressed: () {
                        textFieldController.clear();
                        Navigator.pop(context);
                      },
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (!_formkey.currentState!.validate()) {
                          return;
                        }
                        addStock(textFieldController.text).catchError((_) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                AppLocalizations.of(context)!.not_found,
                                style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.red),
                              ),
                              duration: const Duration(seconds: 2),
                            ),
                          );
                        });
                        textFieldController.clear();
                        Navigator.pop(context);
                      },
                      child: Text(
                        AppLocalizations.of(context)!.add,
                        style: const TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              );
            },
          )
        ],
      ),
      body: FutureBuilder<List<pb.StockRealTimeTickMessage>?>(
        future: realTimeData,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.separated(
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
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: stockPriceText(
                                  priceChgText(snapshot.data![index].close),
                                  snapshot.data![index].chgType.toInt(),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: stockPriceText(
                                  '${snapshot.data![index].priceChg == 0 ? '' : snapshot.data![index].priceChg > 0 ? '+' : '-'} ${priceChgText(snapshot.data![index].priceChg.abs())}',
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
      ),
    );
  }

  Future<void> initialWS() async {
    _channel = IOWebSocketChannel.connect(
      Uri.parse(backendPickWSURLPrefixV2),
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
      throw Exception('no data');
    }
    Stock data = dataArr[0];
    if (data.name!.isEmpty) {
      throw Exception('name is empty');
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
    await PickStockRepo.deleteAll();
    stockOrder.clear();

    List<String> dbStock = await PickStockRepo.getAllPickStock();
    Map<String, pb.PickListType> pickMap = {};
    for (final stockNum in dbStock) {
      pickMap[stockNum] = pb.PickListType.TYPE_REMOVE;
    }
    _channel!.sink.add(pb.PickRealMap(pickMap: pickMap).writeToBuffer());
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

  String priceChgText(double priceChg) {
    if (priceChg >= 0.01 && priceChg < 5) {
      return priceChg.toStringAsFixed(2);
    } else if (priceChg >= 5 && priceChg < 10) {
      return priceChg.toStringAsFixed(2);
    } else if (priceChg >= 10 && priceChg < 50) {
      return priceChg.toStringAsFixed(2);
    } else if (priceChg >= 50 && priceChg < 100) {
      return priceChg.toStringAsFixed(1);
    } else if (priceChg >= 100 && priceChg < 150) {
      return priceChg.toStringAsFixed(1);
    } else if (priceChg >= 150 && priceChg < 500) {
      return priceChg.toStringAsFixed(0);
    } else if (priceChg >= 500 && priceChg < 1000) {
      return priceChg.toStringAsFixed(0);
    } else if (priceChg >= 1000) {
      return priceChg.toStringAsFixed(0);
    }
    return '0';
  }
}
