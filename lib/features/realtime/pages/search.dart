import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:toc_machine_trading_fe/core/api/api.dart';
import 'package:toc_machine_trading_fe/features/realtime/entity/future.dart';
import 'package:toc_machine_trading_fe/features/realtime/pages/future.dart';
import 'package:toc_machine_trading_fe/features/universal/widgets/ad.dart';
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

  @override
  void initState() {
    super.initState();
    initialWS();
  }

  @override
  void setState(VoidCallback fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  List<FutureDetail> futureList = [];

  @override
  void dispose() {
    _channel!.sink.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvoked: (_) {
        SearchCache.clear();
      },
      child: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: topAppBar(
            context,
            AppLocalizations.of(context)!.future,
            automaticallyImplyLeading: true,
          ),
          body: SizedBox(
            child: Padding(
              padding: const EdgeInsets.only(left: 5, right: 5),
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
                    flex: 2,
                    child: ListView.builder(
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
                  const Expanded(
                    child: SafeArea(
                      child: AdBanner(),
                    ),
                  ),
                ],
              ),
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
    String code = SearchCache.getCode();
    if (code.isEmpty) {
      code = "MXF";
      SearchCache.setCode(code);
    }
    _controller.text = code;
    _channel!.sink.add(SearchCache.getCode());
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
