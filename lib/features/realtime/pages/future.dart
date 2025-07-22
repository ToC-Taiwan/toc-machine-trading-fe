import 'package:date_format/date_format.dart' as df;
import 'package:flutter/material.dart';
import 'package:toc_machine_trading_fe/l10n/app_localizations.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:toc_machine_trading_fe/core/api/api.dart';
import 'package:toc_machine_trading_fe/features/universal/widgets/app_bar.dart';
import 'package:toc_machine_trading_fe/features/universal/widgets/text.dart';
import 'package:toc_trade_protobuf/app/app.pb.dart' as pb;
import 'package:toc_trade_protobuf/forwarder/history.pb.dart' as pb;
import 'package:toc_trade_protobuf/forwarder/mq.pb.dart' as pb;
import 'package:wakelock_plus/wakelock_plus.dart';
import 'package:web_socket_channel/io.dart';

class CustomTick {
  CustomTick(this.tick);

  pb.FutureRealTimeTickMessage tick;
  int comboCount = 0;
}

class FutureRealTimePage extends StatefulWidget {
  const FutureRealTimePage({required this.code, super.key});
  final String code;
  @override
  State<FutureRealTimePage> createState() => _FutureRealTimePageState();
}

class _FutureRealTimePageState extends State<FutureRealTimePage> {
  late IOWebSocketChannel? _channel;

  int kbarMaxVolume = 0;
  pb.TradeIndex tradeIndex = pb.TradeIndex();
  List<CustomTick> futureTickArr = [];
  List<pb.FutureRealTimeTickMessage> rateFutureTickArr = [];
  pb.HistoryKbarResponse kbarArr = pb.HistoryKbarResponse();

  double tradeRate = 0;
  double outInRatio = 0.0;

  @override
  void initState() {
    super.initState();
    WakelockPlus.enable();
    initialWS();
  }

  @override
  void dispose() {
    _channel!.sink.close();
    WakelockPlus.disable();
    super.dispose();
  }

  @override
  void setState(VoidCallback fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topAppBar(
        context,
        widget.code,
        automaticallyImplyLeading: true,
        disableActions: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: CircularPercentIndicator(
                        radius: 55.0,
                        lineWidth: 10.0,
                        percent: outInRatio,
                        center: numberText('${tradeRate.toStringAsFixed(1)}/s'),
                        progressColor: Colors.redAccent,
                        backgroundColor: outInRatio == 0 ? Colors.grey : Colors.greenAccent,
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _buildIndex('NASDAQ', tradeIndex.nasdaq.priceChg, tradeIndex.nasdaq.breakCount.toInt()),
                            _buildIndex('NF', tradeIndex.nf.priceChg, tradeIndex.nf.breakCount.toInt()),
                            _buildIndex('TSE', tradeIndex.tse.priceChg, tradeIndex.tse.breakCount.toInt()),
                            _buildIndex('OTC', tradeIndex.otc.priceChg, tradeIndex.otc.breakCount.toInt()),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: futureTickArr.isEmpty
                    ? Container()
                    : Row(
                        children: [
                          Expanded(
                            child: Center(
                              child: numberText(
                                futureTickArr[0].tick.close.abs().toStringAsFixed(0),
                                fontSize: 55,
                                bold: true,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Center(
                              child: numberText(
                                '${futureTickArr[0].tick.priceChg == 0 ? '' : futureTickArr[0].tick.priceChg > 0 ? '+' : '-'} ${futureTickArr[0].tick.priceChg.abs().toStringAsFixed(0)}',
                                fontSize: 45,
                                bold: true,
                                color: futureTickArr[0].tick.priceChg == 0
                                    ? Colors.black
                                    : futureTickArr[0].tick.priceChg > 0
                                        ? Colors.redAccent
                                        : Colors.greenAccent,
                              ),
                            ),
                          ),
                        ],
                      ),
              ),
              Expanded(
                flex: 5,
                child: futureTickArr.length < 2
                    ? Center(
                        child: Text(
                          AppLocalizations.of(context)!.recent_ticks,
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 30,
                          ),
                        ),
                      )
                    : Column(
                        children: [
                          Expanded(child: futureTickArr.length >= 2 ? _buildTickRow(futureTickArr[1]) : Container()),
                          Expanded(child: futureTickArr.length >= 3 ? _buildTickRow(futureTickArr[2]) : Container()),
                          Expanded(child: futureTickArr.length >= 4 ? _buildTickRow(futureTickArr[3]) : Container()),
                        ],
                      ),
              ),
              Expanded(
                flex: 8,
                child: SfCartesianChart(
                  enableSideBySideSeriesPlacement: false,
                  plotAreaBorderWidth: 0,
                  primaryYAxis: const NumericAxis(
                    isVisible: false,
                  ),
                  primaryXAxis: const DateTimeAxis(
                    majorGridLines: MajorGridLines(width: 0),
                  ),
                  axes: [
                    const NumericAxis(
                      name: 'price',
                      isVisible: false,
                    ),
                    NumericAxis(
                      name: 'volume',
                      isVisible: false,
                      opposedPosition: true,
                      maximum: kbarMaxVolume.toDouble() * 2,
                    ),
                  ],
                  series: <CartesianSeries>[
                    CandleSeries<pb.HistoryKbarMessage, DateTime>(
                      yAxisName: 'price',
                      showIndicationForSameValues: true,
                      enableSolidCandles: true,
                      bearColor: Colors.green,
                      bullColor: Colors.red,
                      dataSource: kbarArr.data,
                      xValueMapper: (datum, index) =>
                          DateTime.fromMicrosecondsSinceEpoch(datum.ts.toInt() ~/ 1000).add(const Duration(hours: -8)),
                      lowValueMapper: (datum, index) => datum.low,
                      highValueMapper: (datum, index) => datum.high,
                      openValueMapper: (datum, index) => datum.open,
                      closeValueMapper: (datum, index) => datum.close,
                      trendlines: <Trendline>[
                        Trendline(
                          type: TrendlineType.polynomial,
                          dashArray: <double>[5, 5],
                        ),
                      ],
                    ),
                    ColumnSeries<pb.HistoryKbarMessage, DateTime>(
                      yAxisName: 'volume',
                      dataSource: kbarArr.data,
                      xValueMapper: (datum, index) =>
                          DateTime.fromMicrosecondsSinceEpoch(datum.ts.toInt() ~/ 1000).add(const Duration(hours: -8)),
                      yValueMapper: (datum, index) => datum.volume.toInt(),
                      pointColorMapper: (datum, index) =>
                          datum.close > datum.open ? Colors.redAccent : Colors.greenAccent,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> initialWS() async {
    _channel = IOWebSocketChannel.connect(
      Uri.parse("$backendFutureWSURLPrefix/${widget.code}"),
      pingInterval: const Duration(seconds: 1),
      headers: {
        "Authorization": API.authKey,
      },
    );
    await _channel!.ready;
    _channel!.sink.add(pb.PickFuture(code: widget.code).writeToBuffer());
    _channel!.stream.listen(
      (message) {
        final msg = pb.WSMessage.fromBuffer(message as List<int>);
        if (msg.hasFutureTick()) {
          setState(() {
            if (futureTickArr.isNotEmpty &&
                futureTickArr.first.tick.tickType == msg.futureTick.tickType &&
                futureTickArr.first.tick.close == msg.futureTick.close) {
              futureTickArr.first.comboCount++;
              futureTickArr.first.tick.volume += msg.futureTick.volume;
              futureTickArr.first.tick.dateTime = msg.futureTick.dateTime;
              return;
            }
            futureTickArr.insert(0, CustomTick(msg.futureTick));
            if (futureTickArr.length > 4) {
              futureTickArr.removeLast();
            }
          });
          _updateTradeRate(msg.futureTick);
        } else if (msg.hasHistoryKbar()) {
          int maxVolume = 0;
          for (final kbar in msg.historyKbar.data) {
            if (kbar.volume > maxVolume) {
              maxVolume = kbar.volume.toInt();
            }
          }
          setState(() {
            kbarArr = msg.historyKbar;
            kbarMaxVolume = maxVolume;
          });
        } else if (msg.hasTradeIndex()) {
          setState(() {
            tradeIndex = msg.tradeIndex;
          });
        } else if (futureTickArr.isEmpty && msg.hasSnapshot()) {
          setState(() {
            futureTickArr.insert(
              0,
              CustomTick(pb.FutureRealTimeTickMessage(
                close: msg.snapshot.close,
                priceChg: msg.snapshot.changePrice,
                dateTime: DateTime.fromMicrosecondsSinceEpoch(msg.snapshot.ts.toInt() ~/ 1000)
                    .add(const Duration(hours: -8))
                    .toIso8601String(),
                volume: msg.snapshot.volume,
              )),
            );
          });
        }
      },
      onDone: () {},
      onError: (error) {},
    );
  }

  void _updateTradeRate(pb.FutureRealTimeTickMessage tick) {
    rateFutureTickArr.insert(0, tick);
    if (rateFutureTickArr.length == 1) {
      return;
    }
    double outCount = 0;
    double inCount = 0;
    double rate = 0;
    double duration = 0;
    for (int i = rateFutureTickArr.length - 1; i >= 0; i--) {
      if (DateTime.now().difference(DateTime.parse(rateFutureTickArr[i].dateTime)).inSeconds > 15) {
        rateFutureTickArr.removeAt(i);
        continue;
      }
      if (duration == 0) {
        duration = DateTime.parse(rateFutureTickArr.first.dateTime)
            .difference(DateTime.parse(rateFutureTickArr[i].dateTime))
            .inSeconds
            .toDouble();
        if (duration == 0) {
          return;
        }
      }
      if (rateFutureTickArr[i].tickType == 1) {
        outCount += rateFutureTickArr[i].volume.toDouble();
      } else {
        inCount += rateFutureTickArr[i].volume.toDouble();
      }
    }

    rate = (outCount + inCount) / duration;
    setState(() {
      tradeRate = rate;
      outInRatio = outCount / (outCount + inCount);
    });
  }

  Row _buildIndex(String name, num priceChg, int breakCount) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: numberText(name, color: Theme.of(context).colorScheme.secondary),
        ),
        Expanded(
          flex: 3,
          child: Align(
            alignment: Alignment.centerRight,
            child: numberText(
              priceChg.toStringAsFixed(2),
              color: priceChg == 0
                  ? Colors.grey
                  : priceChg > 0
                      ? Colors.redAccent
                      : Colors.greenAccent,
            ),
          ),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.centerRight,
            child: numberText(
              '!${breakCount.abs().toString()}',
              color: breakCount == 0
                  ? Colors.grey
                  : breakCount > 0
                      ? Colors.redAccent
                      : Colors.greenAccent,
            ),
          ),
        ),
      ],
    );
  }

  Container _buildTickRow(CustomTick tick) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 3,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: tick.tick.tickType == 1 ? Colors.red : Colors.green,
          width: tick.comboCount > 0 ? 1.6 : 1.1,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: numberText(
          '${tick.tick.volume}',
          color: tick.tick.tickType == 1 ? Colors.red : Colors.green,
          bold: true,
          fontSize: tick.comboCount > 0 ? 24 : 16,
        ),
        title: numberText(tick.tick.close.toStringAsFixed(0),
            color: tick.tick.tickType == 1 ? Colors.red : Colors.green, bold: true, fontSize: 18),
        trailing: numberText(
          df.formatDate(DateTime.parse(tick.tick.dateTime), [df.HH, ':', df.nn, ':', df.ss]),
        ),
      ),
    );
  }
}
