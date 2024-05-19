import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:k_chart/entity/index.dart';
import 'package:k_chart/k_chart_widget.dart';
import 'package:k_chart/renderer/index.dart';
import 'package:k_chart/utils/index.dart';
import 'package:toc_machine_trading_fe/core/api/api.dart';
import 'package:toc_trade_protobuf/forwarder/history.pb.dart' as pb;
import 'package:toc_machine_trading_fe/features/universal/widgets/app_bar.dart';
import 'package:web_socket_channel/io.dart';

const Color backgroundColor = Colors.white;

class KbarPage extends StatefulWidget {
  const KbarPage({required this.code, required this.name, super.key});
  final String code;
  final String name;
  @override
  State<KbarPage> createState() => _KbarPageState();
}

class _KbarPageState extends State<KbarPage> {
  late IOWebSocketChannel? _channel;

  DateTime kbarStartDate = DateTime.now();
  List<KLineEntity> datas = [];
  bool loading = false;
  bool dragging = false;

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
  void didChangeDependencies() {
    super.didChangeDependencies();
    _handleLoadMore();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: topAppBar(
        context,
        '${widget.name}(${widget.code})',
        automaticallyImplyLeading: true,
        disableActions: true,
        backgroundColor: backgroundColor,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: KChartWidget(
                datas,
                ChartStyle(),
                ChartCustomColor(),
                isLine: false,
                mainState: MainState.NONE,
                secondaryState: SecondaryState.MACD,
                fixedLength: 2,
                timeFormat: TimeFormat.YEAR_MONTH_DAY,
                onLoadMore: (_) {
                  _handleLoadMore();
                },
                maDayList: const [5, 10, 20],
                volHidden: false,
                showNowPrice: true,
                isOnDrag: (isDrag) {
                  dragging = isDrag;
                },
                onSecondaryTap: () {},
                isTrendLine: false,
                xFrontPadding: 100,
              ),
            ),
            loading
                ? Center(
                    child: SpinKitWave(
                      color: Theme.of(context).colorScheme.primary,
                      size: 35.0,
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }

  Future<void> initialWS() async {
    _channel = IOWebSocketChannel.connect(
      Uri.parse(backendHistoryWSURLPrefix),
      pingInterval: const Duration(seconds: 1),
      headers: {
        "Authorization": API.authKey,
      },
    );
    await _channel!.ready;
    _channel!.stream.listen(
      (message) {
        final msg = pb.HistoryKbarResponse.fromBuffer(message as List<int>);
        final kbar = msg.data;
        for (final item in kbar) {
          datas.insert(
              0,
              KLineEntity.fromJson({
                "open": item.open,
                "high": item.high,
                "low": item.low,
                "close": item.close,
                "vol": item.volume,
                "time": item.ts.toInt() ~/ 1000 ~/ 1000,
              }));
        }
        kbarStartDate =
            DateTime.fromMicrosecondsSinceEpoch(kbar.last.ts.toInt() ~/ 1000)
                .add(const Duration(days: -1));
        while (dragging) {
          Future.delayed(const Duration(milliseconds: 100));
        }
        setState(() {
          DataUtil.calculate(datas);
          loading = false;
        });
      },
      onDone: () {},
      onError: (error) {},
    );
  }

  void _handleLoadMore() {
    _channel!.sink.add(jsonEncode({
      "stock_num": widget.code,
      "start_date": kbarStartDate.toString().substring(0, 10),
      "interval": 20,
    }));
    setState(() {
      loading = true;
    });
  }
}

class ChartCustomColor with ChartColors {
  @override
  Color get upColor => Colors.redAccent;

  @override
  Color get nowPriceUpColor => Colors.red;

  @override
  Color get infoWindowUpColor => Colors.redAccent;

  @override
  Color get dnColor => Colors.greenAccent;

  @override
  Color get nowPriceDnColor => Colors.green;

  @override
  Color get infoWindowDnColor => Colors.greenAccent;

  @override
  List<Color> get bgColor => [backgroundColor, backgroundColor];
}
