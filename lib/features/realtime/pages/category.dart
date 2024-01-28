import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:toc_machine_trading_fe/features/realtime/pages/future.dart';
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
              crossAxisCount: 2,
              children: [
                Card(
                  elevation: 3,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
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
                    child: const Center(
                      child: Text(
                        'MXF',
                        style: TextStyle(
                          fontSize: 26,
                        ),
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 3,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                  ),
                  child: InkWell(
                    onTap: () {},
                    child: Center(
                      child: Text(
                        AppLocalizations.of(context)!.pick_stock,
                        style: const TextStyle(
                          fontSize: 26,
                        ),
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
