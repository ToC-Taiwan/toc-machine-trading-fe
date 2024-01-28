import 'package:date_format/date_format.dart' as df;
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:toc_machine_trading_fe/core/api/api.dart';
import 'package:toc_machine_trading_fe/core/pb/app/app.pb.dart' as pb;
import 'package:toc_machine_trading_fe/features/universal/widgets/app_bar.dart';
import 'package:toc_machine_trading_fe/features/universal/widgets/text.dart';
import 'package:wakelock/wakelock.dart';
import 'package:web_socket_channel/io.dart';

class FutureRealTimePage extends StatefulWidget {
  const FutureRealTimePage({required this.code, super.key});

  final String code;

  @override
  State<FutureRealTimePage> createState() => _FutureRealTimePageState();
}

class _FutureRealTimePageState extends State<FutureRealTimePage> {
  late IOWebSocketChannel? _channel;

  String delieveryDate = '';
  int kbarMaxVolume = 0;
  pb.WSTradeIndex tradeIndex = pb.WSTradeIndex();
  List<pb.WSFutureTick> futureTickArr = [];
  List<pb.WSFutureTick> rateFutureTickArr = [];
  List<pb.Kbar> kbarArr = [];

  double tradeRate = 0;
  double outInRatio = 0.0;

  @override
  void initState() {
    super.initState();
    Wakelock.enable();
    initialWS();
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
                flex: 2,
                child: futureTickArr.isEmpty
                    ? Container()
                    : Row(
                        children: [
                          Expanded(
                            child: Center(
                              child: numberText(
                                futureTickArr[0].close.toStringAsFixed(0),
                                fontSize: 55,
                                bold: true,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Center(
                              child: numberText(
                                '${futureTickArr[0].priceChg == 0 ? '' : futureTickArr[0].priceChg > 0 ? '+' : '-'} ${futureTickArr[0].priceChg.abs().toStringAsFixed(0)}',
                                fontSize: 45,
                                bold: true,
                                color: futureTickArr[0].priceChg > 0 ? Colors.redAccent : Colors.greenAccent,
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
                          AppLocalizations.of(context)!.no_data,
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
                    CandleSeries<pb.Kbar, DateTime>(
                      yAxisName: 'price',
                      showIndicationForSameValues: true,
                      enableSolidCandles: true,
                      bearColor: Colors.green,
                      bullColor: Colors.red,
                      dataSource: kbarArr,
                      xValueMapper: (datum, index) => DateTime.parse(datum.kbarTime),
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
                    ColumnSeries<pb.Kbar, DateTime>(
                      yAxisName: 'volume',
                      dataSource: kbarArr,
                      xValueMapper: (datum, index) => DateTime.parse(datum.kbarTime),
                      yValueMapper: (datum, index) => datum.volume.toInt(),
                      pointColorMapper: (datum, index) => datum.close > datum.open ? Colors.redAccent : Colors.greenAccent,
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

  void initialWS() async {
    _channel = IOWebSocketChannel.connect(
      Uri.parse(backendFutureWSURLPrefix),
      pingInterval: const Duration(seconds: 1),
      headers: {
        "Authorization": API.authKey,
      },
    );
    await _channel!.ready;
    _channel!.stream.listen(
      (message) {
        if (!mounted) {
          return;
        }

        final msg = pb.WSMessage.fromBuffer(message as List<int>);
        switch (msg.type) {
          case pb.WSType.TYPE_FUTURE_TICK:
            setState(() {
              futureTickArr.insert(0, msg.futureTick);
              if (futureTickArr.length > 4) {
                futureTickArr.removeLast();
              }
            });
            _updateTradeRate(msg.futureTick);
            return;

          case pb.WSType.TYPE_TRADE_INDEX:
            setState(() {
              tradeIndex = msg.tradeIndex;
            });
            return;

          case pb.WSType.TYPE_KBAR_ARR:
            int maxVolume = 0;
            for (final kbar in msg.historyKbar.arr) {
              if (kbar.volume > maxVolume) {
                maxVolume = kbar.volume.toInt();
              }
            }
            setState(() {
              kbarArr = msg.historyKbar.arr;
              kbarMaxVolume = maxVolume;
            });
            return;

          case pb.WSType.TYPE_FUTURE_DETAIL:
            delieveryDate = msg.futureDetail.deliveryDate;
            return;

          case pb.WSType.TYPE_ASSIST_STATUS:
            return;
          case pb.WSType.TYPE_ERR_MESSAGE:
            return;
          case pb.WSType.TYPE_FUTURE_ORDER:
            return;
          case pb.WSType.TYPE_FUTURE_POSITION:
            return;
        }
      },
      onDone: () {
        if (mounted) {
          Future.delayed(const Duration(milliseconds: 1000)).then((value) {
            _channel!.sink.close();
            initialWS();
          });
        }
      },
      onError: (error) {},
    );
  }

  void _updateTradeRate(pb.WSFutureTick tick) {
    rateFutureTickArr.insert(0, tick);
    if (rateFutureTickArr.length == 1) {
      return;
    }
    double outCount = 0;
    double inCount = 0;
    double rate = 0;
    double duration = 0;
    for (int i = rateFutureTickArr.length - 1; i >= 0; i--) {
      if (DateTime.now().difference(DateTime.parse(rateFutureTickArr[i].tickTime)).inSeconds > 15) {
        rateFutureTickArr.removeAt(i);
        continue;
      }
      if (duration == 0) {
        duration = DateTime.parse(rateFutureTickArr.first.tickTime).difference(DateTime.parse(rateFutureTickArr[i].tickTime)).inSeconds.toDouble();
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
          child: numberText(name, color: Colors.blueGrey),
        ),
        Expanded(
          flex: 3,
          child: Align(
            alignment: Alignment.centerRight,
            child: numberText(
              priceChg.toStringAsFixed(2),
              color: priceChg > 0 ? Colors.redAccent : Colors.greenAccent,
            ),
          ),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.centerRight,
            child: numberText(
              '!${breakCount.toString()}',
              color: priceChg > 0 ? Colors.redAccent : Colors.greenAccent,
            ),
          ),
        ),
      ],
    );
  }

  Container _buildTickRow(pb.WSFutureTick tick) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 1.5,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: tick.tickType == 1 ? Colors.red : Colors.green,
          width: 1.1,
        ),
        borderRadius: BorderRadius.circular(3),
      ),
      child: ListTile(
        leading: numberText(
          '${tick.volume}',
          color: tick.tickType == 1 ? Colors.red : Colors.green,
          bold: true,
        ),
        title: numberText(
          tick.close.toStringAsFixed(0),
          color: tick.tickType == 1 ? Colors.red : Colors.green,
          bold: true,
        ),
        trailing: numberText(
          df.formatDate(DateTime.parse(tick.tickTime), [df.HH, ':', df.nn, ':', df.ss]),
        ),
      ),
    );
  }
}
