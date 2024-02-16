import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:toc_machine_trading_fe/core/api/api.dart';
import 'package:toc_machine_trading_fe/core/pb/forwarder/mq.pb.dart' as pb;
import 'package:toc_machine_trading_fe/features/realtime/entity/snapshot.dart';
import 'package:web_socket_channel/io.dart';

enum Action { buy, sell, sellFirst, buyLater, none }

class PlaceOrderWidget extends StatefulWidget {
  const PlaceOrderWidget({super.key});

  @override
  State<PlaceOrderWidget> createState() => _PlaceOrderWidgetState();
}

class _PlaceOrderWidgetState extends State<PlaceOrderWidget> {
  late IOWebSocketChannel? _channel;

  Action _action = Action.none;
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
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Card(
                clipBehavior: Clip.hardEdge,
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () async {
                          // Map<String, SnapShot> snapshots = await API.fetchSnapshots(["2330"]);
                          // // if (snapshots.isEmpty) {
                          // //   return null;
                          // // }
                          // setState(() {
                          //   _snapShot = snapshots["2330"];
                          // });
                          // _channel!.sink.add(
                          //   pb.PickRealMap(
                          //     pickMap: {
                          //       "2330": pb.PickListType.TYPE_ADD,
                          //     },
                          //   ).writeToBuffer(),
                          // );
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
                            : Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(_snapShot!.stockNum!),
                                  Text(_snapShot!.stockName!),
                                  Text(_snapShot!.open!.toString()),
                                  Text(_snapShot!.high!.toString()),
                                  Text(_snapShot!.low!.toString()),
                                  Text(_snapShot!.close!.toString()),
                                ],
                              ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Expanded(
              flex: 5,
              child: Card(
                clipBehavior: Clip.hardEdge,
                child: Row(
                  children: [],
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(child: _buildActionButton(Action.buy)),
                    Expanded(child: _buildActionButton(Action.sell)),
                    Expanded(child: _buildActionButton(Action.sellFirst)),
                    Expanded(child: _buildActionButton(Action.buyLater)),
                  ],
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    AppLocalizations.of(context)!.ok,
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActionButton(Action action) {
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
      return SizedBox(
        height: constraints.maxHeight * 0.8,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            backgroundColor: _action != action
                ? Colors.grey[100]
                : _action == Action.buy
                    ? Colors.redAccent
                    : _action == Action.sell
                        ? Colors.greenAccent
                        : _action == Action.sellFirst
                            ? Colors.greenAccent
                            : Colors.redAccent,
          ),
          onPressed: () {
            setState(() {
              if (_action == action) {
                _action = Action.none;
                return;
              }
              _action = action;
            });
          },
          child: Text(
            action == Action.buy
                ? AppLocalizations.of(context)!.buy
                : action == Action.sell
                    ? AppLocalizations.of(context)!.sell
                    : action == Action.sellFirst
                        ? AppLocalizations.of(context)!.sell_first
                        : AppLocalizations.of(context)!.buy_later,
            style: const TextStyle(color: Colors.black),
          ),
        ),
      );
    });
  }

  Future<void> initialWS() async {
    String url = backendPickWSURLPrefixV2;
    // if (widget.isOdd) {
    //   url = backendPickOddsWSURLPrefixV2;
    // }
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
}
