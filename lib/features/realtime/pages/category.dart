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
      body: Stack(
        children: [
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
                    return _buildSheet(context, scrollController);
                  }
                  return _buildSheet(
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
                      _buildCustomButtom('-', Colors.yellow[600], Icons.shopping_cart),
                      _buildCustomButtom('-', Colors.green[600], Icons.add_home_work_outlined),
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

  Column _buildCustomButtom(String label, Color? color, IconData icon, {void Function()? onTap}) {
    return Column(
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
            label,
            style: Theme.of(context).textTheme.labelLarge,
          ),
        ),
      ],
    );
  }

  Container _buildSheet(BuildContext context, ScrollController scrollController, {List<Widget>? items}) {
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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
