import 'package:flutter/widgets.dart';
import 'package:toc_machine_trading_fe/core/api/api.dart';
import 'package:toc_machine_trading_fe/core/pb/app/app.pb.dart' as pb;
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

  @override
  void initState() {
    super.initState();
    Wakelock.enable();
    initialWS();
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
            return;

          case pb.WSType.TYPE_FUTURE_ORDER:
            return;

          case pb.WSType.TYPE_TRADE_INDEX:
            return;

          case pb.WSType.TYPE_FUTURE_POSITION:
            return;

          case pb.WSType.TYPE_ASSIST_STATUS:
            return;

          case pb.WSType.TYPE_KBAR_ARR:
            return;

          case pb.WSType.TYPE_ERR_MESSAGE:
            return;

          case pb.WSType.TYPE_FUTURE_DETAIL:
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

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
