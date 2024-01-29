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
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: [
            GridView.count(
              shrinkWrap: true,
              childAspectRatio: 1.5,
              crossAxisCount: 3,
              children: [
                Card(
                  elevation: 3,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  child: InkWell(
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
                    child: Center(
                      child: Text(
                        'MXF',
                        style: Theme.of(context).textTheme.bodyLarge!,
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 3,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          fullscreenDialog: true,
                          builder: (context) => const PickStockPage(),
                        ),
                      );
                    },
                    child: Center(
                      child: Text(
                        AppLocalizations.of(context)!.pick_stock,
                        style: Theme.of(context).textTheme.bodyLarge!,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
