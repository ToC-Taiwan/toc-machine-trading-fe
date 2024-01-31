import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:toc_machine_trading_fe/features/realtime/pages/future.dart';
import 'package:toc_machine_trading_fe/features/realtime/pages/pick_stock.dart';
import 'package:toc_machine_trading_fe/features/universal/widgets/app_bar.dart';

class RealTimeCategoryPage extends StatefulWidget {
  const RealTimeCategoryPage({super.key});

  @override
  State<RealTimeCategoryPage> createState() => _RealTimeCategoryPageState();
}

class _RealTimeCategoryPageState extends State<RealTimeCategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topAppBar(
        context,
        AppLocalizations.of(context)!.realtime,
      ),
      body: DraggableScrollableSheet(
        maxChildSize: 0.2,
        minChildSize: 0.1,
        initialChildSize: 0.2,
        snap: true,
        snapSizes: const [0.2],
        builder: (context, scrollController) {
          return LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              final double minHeight = MediaQuery.of(context).size.height * 0.1;
              if (constraints.maxHeight > minHeight) {
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
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: const Icon(
                          Icons.keyboard_double_arrow_down_rounded,
                          color: Colors.grey,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ClipOval(
                                child: Container(
                                  color: Colors.blue[600],
                                  height: 55,
                                  width: 55,
                                  child: InkWell(
                                    child: const Icon(
                                      Icons.chrome_reader_mode_rounded,
                                      color: Colors.white,
                                    ),
                                    onTap: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          fullscreenDialog: true,
                                          builder: (context) => const FutureRealTimePage(
                                            code: 'MXF',
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Text(
                                  'MXF',
                                  style: Theme.of(context).textTheme.labelLarge,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ClipOval(
                                child: Container(
                                  color: Colors.red[600],
                                  height: 55,
                                  width: 55,
                                  child: InkWell(
                                    child: const Icon(
                                      Icons.playlist_add_check_circle,
                                      color: Colors.white,
                                    ),
                                    onTap: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          fullscreenDialog: true,
                                          builder: (context) => const PickStockPage(),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Text(
                                  AppLocalizations.of(context)!.pick_stock,
                                  style: Theme.of(context).textTheme.labelLarge,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ClipOval(
                                child: Container(
                                  color: Colors.yellow[600],
                                  height: 55,
                                  width: 55,
                                  child: InkWell(
                                    child: const Icon(
                                      Icons.shopping_cart,
                                      color: Colors.white,
                                    ),
                                    onTap: () {},
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Text(
                                  '-',
                                  style: Theme.of(context).textTheme.labelLarge,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ClipOval(
                                child: Container(
                                  color: Colors.green[600],
                                  height: 55,
                                  width: 55,
                                  child: InkWell(
                                    child: const Icon(
                                      Icons.add_home_work_outlined,
                                      color: Colors.white,
                                    ),
                                    onTap: () {},
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Text(
                                  '-',
                                  style: Theme.of(context).textTheme.labelLarge,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              } else {
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
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: const Icon(
                          Icons.keyboard_double_arrow_up_sharp,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                );
              }
            },
          );
        },
      ),
    );
  }
}
