import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:syncfusion_flutter_treemap/treemap.dart';
import 'package:toc_machine_trading_fe/core/api/api.dart';
import 'package:toc_machine_trading_fe/core/pb/forwarder/realtime.pb.dart' as pb;
import 'package:toc_machine_trading_fe/features/order/pages/order.dart';
import 'package:toc_machine_trading_fe/features/realtime/pages/future.dart';
import 'package:toc_machine_trading_fe/features/realtime/pages/pick_stock.dart';
import 'package:toc_machine_trading_fe/features/realtime/repo/pick_stock.dart';
import 'package:toc_machine_trading_fe/features/target_combo/pages/target_combo.dart';
import 'package:toc_machine_trading_fe/features/universal/widgets/app_bar.dart';
import 'package:web_socket_channel/io.dart';

class RealTimeCategoryPage extends StatefulWidget {
  const RealTimeCategoryPage({super.key});

  @override
  State<RealTimeCategoryPage> createState() => _RealTimeCategoryPageState();
}

class _RealTimeCategoryPageState extends State<RealTimeCategoryPage> {
  late IOWebSocketChannel? _channel;

  Future<List<pb.StockVolumeRankMessage>?> _dataSource = Future.value([]);
  List<pb.StockVolumeRankMessage> _data = [];
  bool _expanded = true;
  bool _hasNewData = false;

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

  @override
  void dispose() {
    _channel!.sink.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topAppBar(
        context,
        AppLocalizations.of(context)!.realtime,
        actions: [
          _hasNewData
              ? IconButton(
                  icon: const Icon(
                    Icons.refresh,
                    color: Colors.red,
                    shadows: [
                      Shadow(
                        color: Colors.yellow,
                        offset: Offset(0, 1),
                        blurRadius: 3,
                      ),
                    ],
                  ),
                  onPressed: () {
                    setState(() {
                      _dataSource = Future.value([]);
                      Future.delayed(const Duration(milliseconds: 300), () {
                        _dataSource = Future.value(_data);
                      });
                      _hasNewData = false;
                    });
                  },
                )
              : const SizedBox.shrink(),
        ],
      ),
      body: Stack(
        children: [
          FutureBuilder<List<pb.StockVolumeRankMessage>?>(
            future: _dataSource,
            builder: (context, snapshot) {
              if (snapshot.hasData && snapshot.data!.isNotEmpty) {
                return LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    return SizedBox(
                      height: constraints.maxHeight * (_expanded ? 0.8 : 0.9) + 10,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: SfTreemap(
                              colorMappers: const [
                                TreemapColorMapper.range(from: -9999, to: -0.01, color: Colors.greenAccent),
                                TreemapColorMapper.range(from: 0, to: 0, color: Colors.blueGrey),
                                TreemapColorMapper.range(from: 0.01, to: 9999, color: Colors.redAccent),
                              ],
                              dataCount: snapshot.data!.length,
                              weightValueMapper: (int index) {
                                return snapshot.data![index].totalAmount.toDouble();
                              },
                              onSelectionChanged: (value) async {
                                ScaffoldMessenger.of(context).clearSnackBars();
                                bool pickExist = await PickStockRepo.exist(snapshot.data![value.indices[0]].code);
                                if (!pickExist) {
                                  await PickStockRepo.insert(snapshot.data![value.indices[0]].code);
                                  showAddResultSnackBar();
                                }
                              },
                              levels: [
                                TreemapLevel(
                                  groupMapper: (int index) {
                                    if (index < 9) {
                                      return '${snapshot.data![index].name} (${snapshot.data![index].changePrice == 0 ? '' : snapshot.data![index].changePrice > 0 ? '+' : '-'}${snapshot.data![index].changePrice.abs()})';
                                    }
                                    return snapshot.data![index].code;
                                  },
                                  colorValueMapper: (tile) {
                                    return snapshot.data![tile.indices[0]].changePrice;
                                  },
                                  padding: const EdgeInsets.all(1.5),
                                  labelBuilder: (BuildContext context, TreemapTile tile) {
                                    return Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(
                                        tile.group,
                                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          shadows: [
                                            const Shadow(
                                              color: Colors.black,
                                              offset: Offset(0, 1),
                                              blurRadius: 3,
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                );
              }
              return const Center(
                child: SpinKitWave(color: Colors.blueGrey, size: 35.0),
              );
            },
          ),
          DraggableScrollableSheet(
            maxChildSize: 0.2,
            minChildSize: 0.1,
            initialChildSize: 0.2,
            snap: true,
            snapSizes: const [0.2],
            builder: (context, scrollController) {
              return LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  final double minHeight = MediaQuery.of(context).size.height * 0.1;
                  if (constraints.maxHeight < minHeight) {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      setState(() {
                        _expanded = false;
                      });
                    });
                    return _buildListViewSheet(context, scrollController);
                  }
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    setState(() {
                      _expanded = true;
                    });
                  });
                  return _buildListViewSheet(
                    context,
                    scrollController,
                    items: [
                      _buildCustomButtom(AppLocalizations.of(context)!.mxf, Colors.blue[600], Icons.chrome_reader_mode_rounded, onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(fullscreenDialog: true, builder: (context) => FutureRealTimePage(code: AppLocalizations.of(context)!.mxf)),
                        );
                      }),
                      _buildCustomButtom(AppLocalizations.of(context)!.pick_stock, Colors.red[600], Icons.playlist_add_check_circle, onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(fullscreenDialog: true, builder: (context) => const PickStockPage()),
                        );
                      }),
                      _buildCustomButtom(AppLocalizations.of(context)!.target_combo, Colors.yellow[600], Icons.add_home_work_outlined, onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(fullscreenDialog: false, builder: (context) => const TargetComboPage()),
                        );
                      }),
                      _buildCustomButtom(AppLocalizations.of(context)!.order, Colors.green[600], Icons.shopping_cart, onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(fullscreenDialog: false, builder: (context) => const OrderPage()),
                        );
                      }),
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }

  void showAddResultSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          AppLocalizations.of(context)!.pick_stock,
          style: const TextStyle(
            color: Colors.green,
          ),
        ),
      ),
    );
  }

  Future<void> initialWS() async {
    _channel = IOWebSocketChannel.connect(
      Uri.parse(backendTargetWSURLPrefix),
      pingInterval: const Duration(seconds: 1),
      headers: {
        "Authorization": API.authKey,
      },
    );
    await _channel!.ready;
    _channel!.stream.listen(
      (message) {
        final msg = pb.StockVolumeRankResponse.fromBuffer(message as List<int>);
        msg.data.sort((a, b) => b.totalAmount.compareTo(a.totalAmount));
        bool changed = false;
        if (_data.isEmpty) {
          changed = true;
        } else {
          for (var i = 0; i < _data.length; i++) {
            if (_data[i].code != msg.data[i].code || _data[i].totalAmount != msg.data[i].totalAmount) {
              changed = true;
              break;
            }
          }
        }
        if (!changed) return;

        if (msg.data.length > 14) {
          _data = msg.data.sublist(0, 14);
        } else {
          _data = msg.data;
        }
        _dataSource.then((value) {
          if (value!.isNotEmpty) {
            setState(() {
              _hasNewData = true;
            });
          } else {
            setState(() {
              _dataSource = Future.value(_data);
            });
          }
        });
      },
      onDone: () {},
      onError: (error) {},
    );
  }

  Widget _buildCustomButtom(String label, Color? color, IconData icon, {void Function()? onTap}) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipOval(
            child: Container(
              color: color,
              height: 55,
              width: 55,
              child: InkWell(
                onTap: onTap,
                child: Icon(
                  icon,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              overflow: TextOverflow.values[2],
              maxLines: 1,
              label,
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ),
        ],
      ),
    );
  }

  Container _buildListViewSheet(BuildContext context, ScrollController scrollController, {List<Widget>? items}) {
    IconData icon = Icons.keyboard_double_arrow_up_sharp;
    if (items != null && items.isNotEmpty) {
      icon = Icons.keyboard_double_arrow_down_rounded;
    }
    List<Widget> listViewItem = [
      SizedBox(
        height: MediaQuery.of(context).size.height * 0.05,
        child: Icon(
          icon,
          color: Colors.grey,
        ),
      ),
      Row(
        children: items ?? [],
      ),
    ];
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.8),
            spreadRadius: 0,
            blurRadius: 15,
            offset: const Offset(0, -5),
          ),
        ],
      ),
      child: ListView(
        controller: scrollController,
        physics: const ClampingScrollPhysics(),
        children: listViewItem,
      ),
    );
  }
}
