import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:syncfusion_flutter_treemap/treemap.dart';
import 'package:toc_machine_trading_fe/core/api/api.dart';
import 'package:toc_machine_trading_fe/features/order/pages/category.dart';
import 'package:toc_machine_trading_fe/features/package_setting/pages/package_setting.dart';
import 'package:toc_machine_trading_fe/features/realtime/pages/pick_category.dart';
import 'package:toc_machine_trading_fe/features/realtime/pages/search.dart';
import 'package:toc_machine_trading_fe/features/realtime/repo/pick_stock.dart';
import 'package:toc_machine_trading_fe/features/universal/widgets/app_bar.dart';
import 'package:toc_trade_protobuf/forwarder/realtime.pb.dart' as pb;
import 'package:web_socket_channel/io.dart';

class RealTimeCategoryPage extends StatefulWidget {
  const RealTimeCategoryPage({super.key});

  @override
  State<RealTimeCategoryPage> createState() => _RealTimeCategoryPageState();
}

class _RealTimeCategoryPageState extends State<RealTimeCategoryPage> {
  final CarouselSliderController _controller = CarouselSliderController();
  late IOWebSocketChannel? _channel;

  List<List<pb.StockVolumeRankMessage>> imageSliders = [];
  List<pb.StockVolumeRankMessage> _data = [];
  bool _expanded = true;

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
      ),
      body: Stack(
        children: [
          LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return SizedBox(
                height: constraints.maxHeight * (_expanded ? 0.8 : 0.9) + 10,
                child: imageSliders.isEmpty
                    ? SpinKitWave(
                        color: Theme.of(context).colorScheme.primary,
                        size: 35.0,
                      )
                    : CarouselSlider.builder(
                        carouselController: _controller,
                        options: CarouselOptions(
                          initialPage: imageSliders.length - 1,
                          height: double.infinity,
                          viewportFraction: 1,
                          scrollPhysics: const NeverScrollableScrollPhysics(),
                          enableInfiniteScroll: true,
                          autoPlay: false,
                        ),
                        itemCount: imageSliders.length,
                        itemBuilder: (BuildContext context, int itemIndex,
                            int pageViewIndex) {
                          return _buildTreeMap(imageSliders[itemIndex]);
                        },
                      ),
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
                  final double minHeight =
                      MediaQuery.of(context).size.height * 0.1;
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
                      _buildCustomButtom(
                          AppLocalizations.of(context)!.future,
                          Colors.blue[600],
                          Icons.chrome_reader_mode_rounded, onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            maintainState: false,
                            fullscreenDialog: true,
                            builder: (context) => const SearchFuturePage(),
                          ),
                        );
                      }),
                      _buildCustomButtom(
                          AppLocalizations.of(context)!.pick_stock,
                          Colors.red[600],
                          Icons.playlist_add_check_circle, onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            maintainState: false,
                            fullscreenDialog: true,
                            builder: (context) => const PickStockCategoryPage(),
                          ),
                        );
                      }),
                      _buildCustomButtom(
                          AppLocalizations.of(context)!.package,
                          Colors.yellow[600],
                          Icons.add_home_work_outlined, onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            maintainState: false,
                            fullscreenDialog: false,
                            builder: (context) => const PackageSettingPage(),
                          ),
                        );
                      }),
                      _buildCustomButtom(
                          AppLocalizations.of(context)!.commission,
                          Colors.green[600],
                          Icons.shopping_cart, onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            maintainState: false,
                            fullscreenDialog: false,
                            builder: (context) =>
                                const CommissionCategoryPage(),
                          ),
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

  Widget _buildTreeMap(List<pb.StockVolumeRankMessage> data) {
    return SfTreemap(
      colorMappers: [
        const TreemapColorMapper.range(
            from: -9999, to: -0.01, color: Colors.greenAccent),
        TreemapColorMapper.range(
            from: 0, to: 0, color: Theme.of(context).colorScheme.primary),
        const TreemapColorMapper.range(
            from: 0.01, to: 9999, color: Colors.redAccent),
      ],
      dataCount: data.length,
      weightValueMapper: (int index) {
        return data[index].totalAmount.toDouble();
      },
      onSelectionChanged: (value) async {
        ScaffoldMessenger.of(context).clearSnackBars();
        bool pickExist = await PickStockRepo.exist(data[value.indices[0]].code);
        if (!pickExist) {
          await PickStockRepo.insert(data[value.indices[0]].code);
          showAddResultSnackBar();
        }
      },
      levels: [
        TreemapLevel(
          groupMapper: (int index) {
            if (index < 9) {
              return '${data[index].name} (${data[index].changePrice == 0 ? '' : data[index].changePrice > 0 ? '+' : '-'}${data[index].changePrice.abs()})';
            }
            return data[index].code;
          },
          colorValueMapper: (tile) {
            return data[tile.indices[0]].changePrice;
          },
          padding: const EdgeInsets.all(1.5),
          labelBuilder: (BuildContext context, TreemapTile tile) {
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                tile.group,
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  overflow: TextOverflow.values[2],
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
            if (_data[i].code != msg.data[i].code ||
                _data[i].totalAmount != msg.data[i].totalAmount) {
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
        if (_data.isEmpty) return;
        setState(() {
          imageSliders.add(_data);
          if (imageSliders.length == 1) {
            return;
          }
          _controller.nextPage();
          if (imageSliders.length > 1) {
            imageSliders.removeAt(0);
          }
        });
      },
      onDone: () {},
      onError: (error) {},
    );
  }

  Widget _buildCustomButtom(String label, Color? color, IconData icon,
      {void Function()? onTap}) {
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

  Container _buildListViewSheet(
      BuildContext context, ScrollController scrollController,
      {List<Widget>? items}) {
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
        primary: false,
        controller: scrollController,
        physics: const ClampingScrollPhysics(),
        children: listViewItem,
      ),
    );
  }
}
