import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:toc_machine_trading_fe/core/api/api.dart';
import 'package:toc_machine_trading_fe/core/pb/app/app.pb.dart' as pb;
import 'package:toc_machine_trading_fe/core/pb/forwarder/mq.pb.dart' as pb;
import 'package:toc_machine_trading_fe/features/order/entity/order.dart';
import 'package:toc_machine_trading_fe/features/order/widgets/stock_picker_category.dart';
import 'package:toc_machine_trading_fe/features/realtime/entity/snapshot.dart';
import 'package:toc_machine_trading_fe/features/universal/widgets/text.dart';
import 'package:web_socket_channel/io.dart';

class StockPickerWidget extends StatefulWidget {
  const StockPickerWidget({required this.orderStreamController, required this.isOdd, super.key});
  final StreamController<Order> orderStreamController;
  final bool isOdd;

  @override
  State<StockPickerWidget> createState() => _StockPickerWidgetState();
}

class _StockPickerWidgetState extends State<StockPickerWidget> {
  late IOWebSocketChannel? _channel;

  SnapShot? _snapShot;

  @override
  void initState() {
    super.initState();
    initialWS();
  }

  @override
  void dispose() {
    _channel!.sink.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(0),
      clipBehavior: Clip.hardEdge,
      child: Row(
        children: [
          Expanded(
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                  constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height * 0.55,
                  ),
                  isScrollControlled: true,
                  showDragHandle: true,
                  context: context,
                  builder: (context) => PickerCategoryWidget(onConfirm: checkCode),
                );
              },
              child: _snapShot == null
                  ? SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                      child: Center(
                        child: Text(
                          AppLocalizations.of(context)!.tap_to_choose_stock,
                          style: Theme.of(context).textTheme.titleMedium!,
                        ),
                      ),
                    )
                  : Row(
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                _snapShot!.stockNum!,
                                style: Theme.of(context).textTheme.titleMedium!,
                              ),
                              Text(
                                _snapShot!.stockName!,
                                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              stockPriceText(
                                _snapShot!.close.toString(),
                                _snapShot!.chgType!,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    _snapShot!.priceChg! > 0 ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                                    color: _snapShot!.priceChg! > 0 ? Colors.red : Colors.green,
                                  ),
                                  Text(
                                    _snapShot!.priceChg!.toString(),
                                    style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                          fontWeight: FontWeight.bold,
                                          color: _snapShot!.priceChg! > 0 ? Colors.red : Colors.green,
                                        ),
                                  ),
                                  Text(
                                    " (${_snapShot!.pctChg!.toStringAsFixed(2)}%)",
                                    style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                          fontWeight: FontWeight.bold,
                                          color: _snapShot!.priceChg! > 0 ? Colors.red : Colors.green,
                                        ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
            ),
          ),
        ],
      ),
    );
  }

  void showStockNotFound({String? msg}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 2),
        content: Text(AppLocalizations.of(context)!.not_found),
      ),
    );
  }

  Future<void> checkCode(String code) async {
    Map<String, SnapShot> snapshots = await API.fetchSnapshots([code]).catchError(
      (_) {
        return Future<Map<String, SnapShot>>.value({});
      },
    );
    if (snapshots.isEmpty || snapshots[code]!.stockName!.isEmpty) {
      showStockNotFound();
      return;
    }
    String removeCode = "";
    if (_snapShot != null) {
      if (_snapShot!.stockNum == code) {
        return;
      }
      removeCode = _snapShot!.stockNum!;
    }
    setState(() {
      _snapShot = snapshots[code];
    });
    _channel!.sink.add(
      pb.PickRealMap(
        pickMap: {
          code: pb.PickListType.TYPE_ADD,
          if (removeCode.isNotEmpty) removeCode: pb.PickListType.TYPE_REMOVE,
        },
      ).writeToBuffer(),
    );
    widget.orderStreamController.add(Order(
      code: code,
      price: _snapShot!.close,
      count: 1,
      type: widget.isOdd ? OrderType.stockOdd : OrderType.stock,
      availablePrice: getAvailablePrice(_snapShot!),
      validUntilUnit: OrderValidUntilUnit.m5,
    ));
  }

  Future<void> initialWS() async {
    String url = backendPickLotWSURLPrefix;
    if (widget.isOdd) {
      url = backendPickOddsWSURLPrefix;
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
        setState(() {
          _snapShot = _snapshotFromPB(msg);
        });
      },
      onDone: () {},
      onError: (error) {},
    );
  }

  num getGap(num close) {
    if (close >= 0 && close < 5) {
      return 0.01;
    } else if (close >= 5 && close < 10) {
      return 0.01;
    } else if (close >= 10 && close < 50) {
      return 0.05;
    } else if (close >= 50 && close < 100) {
      return 0.1;
    } else if (close >= 100 && close < 150) {
      return 0.5;
    } else if (close >= 150 && close < 500) {
      return 0.5;
    } else if (close >= 500 && close < 1000) {
      return 1;
    }
    return 5;
  }

  int getDigit(num close) {
    if (close >= 0 && close < 5) {
      return 2;
    } else if (close >= 5 && close < 10) {
      return 2;
    } else if (close >= 10 && close < 50) {
      return 2;
    } else if (close >= 50 && close < 100) {
      return 1;
    } else if (close >= 100 && close < 150) {
      return 1;
    } else if (close >= 150 && close < 500) {
      return 0;
    } else if (close >= 500 && close < 1000) {
      return 0;
    }
    return 0;
  }

  List<num> getAvailablePrice(SnapShot data) {
    num zeroPoint;
    if (data.priceChg! > 0) {
      zeroPoint = num.parse((data.close! - data.priceChg!.abs()).toStringAsFixed(2));
    } else {
      zeroPoint = num.parse((data.close! + data.priceChg!.abs()).toStringAsFixed(2));
    }

    num maxPrice = num.parse((zeroPoint * 1.1).toStringAsFixed(2));
    num minPrice = num.parse((zeroPoint * 0.9).toStringAsFixed(2));

    num cloneZeroPoint = zeroPoint;
    List<num> availablePrice = [zeroPoint];
    while (cloneZeroPoint < maxPrice) {
      var gap = getGap(cloneZeroPoint);
      cloneZeroPoint += gap;
      if (maxPrice < cloneZeroPoint) {
        break;
      }
      availablePrice.add(num.parse(cloneZeroPoint.toStringAsFixed(getDigit(cloneZeroPoint))));
    }

    cloneZeroPoint = zeroPoint;
    while (cloneZeroPoint > minPrice) {
      var gap = getGap(cloneZeroPoint);
      cloneZeroPoint -= gap;
      if (minPrice > cloneZeroPoint) {
        break;
      }
      availablePrice.insert(0, num.parse(cloneZeroPoint.toStringAsFixed(getDigit(cloneZeroPoint))));
    }
    return availablePrice;
  }

  SnapShot _snapshotFromPB(pb.StockRealTimeTickMessage msg) {
    return SnapShot(
      stockNum: msg.code,
      stockName: _snapShot!.stockName,
      open: msg.open,
      high: msg.high,
      low: msg.low,
      close: msg.close,
      tickType: msg.tickType == 0
          ? "None"
          : msg.tickType == 1
              ? "Buy"
              : "Sell",
      priceChg: msg.priceChg,
      pctChg: msg.pctChg,
      chgType: msg.chgType == 1
          ? "LimitUp"
          : msg.chgType == 2
              ? "Up"
              : msg.chgType == 3
                  ? "Unchanged"
                  : msg.chgType == 4
                      ? "Down"
                      : "LimitDown",
      volume: msg.volume.toInt(),
      volumeSum: msg.totalVolume.toInt(),
      amount: msg.amount.toInt(),
      amountSum: msg.totalAmount.toInt(),
      // snapTime: msg.time,
      // yesterdayVolume: msg.yesterdayVolume.toInt(),
      // volumeRatio: msg.volumeRatio,
    );
  }

  Text stockPriceText(String text, String chgType) {
    Color? color;
    Color? backgroundColor;
    switch (chgType) {
      case "LimitUp":
        color = Colors.white;
        backgroundColor = Colors.red;
        break;
      case "Up":
        color = Colors.red;
        break;
      case "Unchanged":
        color = Colors.black;
        break;
      case "Down":
        color = Colors.green;
        break;
      case "LimitDown":
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
      fontSize: 30,
    );
  }
}
