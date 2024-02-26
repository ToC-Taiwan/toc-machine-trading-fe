import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:toc_machine_trading_fe/core/api/api.dart';
import 'package:toc_machine_trading_fe/features/realtime/entity/future.dart';
import 'package:toc_machine_trading_fe/features/realtime/pages/future.dart';
import 'package:toc_machine_trading_fe/features/universal/widgets/app_bar.dart';
import 'package:web_socket_channel/io.dart';

abstract class SearchCache {
  static String code = '';
  static void setCode(String value) {
    code = value;
  }

  static String getCode() {
    return code;
  }

  static void clear() {
    code = '';
  }
}

class SearchFuturePage extends StatefulWidget {
  const SearchFuturePage({super.key});

  @override
  State<SearchFuturePage> createState() => _SearchFuturePageState();
}

class _SearchFuturePageState extends State<SearchFuturePage> {
  final TextEditingController _controller = TextEditingController();
  late IOWebSocketChannel? _channel;

  List<FutureDetail> futureList = [];

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
  void setState(VoidCallback fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvoked: (_) {
        SearchCache.clear();
      },
      child: Scaffold(
        appBar: topAppBar(
          context,
          AppLocalizations.of(context)!.search,
          automaticallyImplyLeading: true,
        ),
        body: SizedBox(
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _controller,
                    onChanged: (value) {
                      if (value.isNotEmpty) {
                        _channel!.sink.add(value);
                        SearchCache.setCode(value);
                      } else {
                        setState(() {
                          futureList = [];
                        });
                      }
                    },
                    decoration: InputDecoration(
                      labelText: AppLocalizations.of(context)!.search,
                      suffixIcon: IconButton(
                        onPressed: () {
                          _controller.clear();
                          SearchCache.clear();
                          setState(() {
                            futureList = [];
                          });
                        },
                        icon: const Icon(Icons.clear),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: futureList.isEmpty
                      ? Center(
                          child: Text(
                            AppLocalizations.of(context)!.no_data,
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 30,
                            ),
                          ),
                        )
                      : ListView.builder(
                          itemCount: futureList.length,
                          itemBuilder: (BuildContext context, int index) {
                            return ListTile(
                              title: Text(futureList[index].name!),
                              subtitle: Text(futureList[index].code!),
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    maintainState: true,
                                    fullscreenDialog: false,
                                    builder: (context) => FutureRealTimePage(
                                      code: futureList[index].code!,
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> initialWS() async {
    _channel = IOWebSocketChannel.connect(
      Uri.parse(wsSearchFutureTargetURL),
      pingInterval: const Duration(seconds: 1),
      headers: {
        "Authorization": API.authKey,
      },
    );
    await _channel!.ready;
    if (SearchCache.getCode().isNotEmpty) {
      _controller.text = SearchCache.getCode();
      _channel!.sink.add(SearchCache.getCode());
    }
    _channel!.stream.listen(
      (message) {
        final msg = jsonDecode(message);
        if (msg['futures'] == null) {
          return;
        }

        List<FutureDetail> result = [];
        for (var item in msg['futures']) {
          result.add(FutureDetail.fromJson(item));
        }
        setState(() {
          futureList = result;
        });
      },
      onDone: () {},
      onError: (error) {},
    );
  }
}
