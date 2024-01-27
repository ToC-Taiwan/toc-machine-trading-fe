import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:toc_machine_trading_fe/features/realtime/pages/future.dart';
import 'package:toc_machine_trading_fe/features/universal/widgets/app_bar.dart';
import 'package:toc_machine_trading_fe/features/universal/widgets/text.dart';

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
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                fullscreenDialog: true,
                builder: (context) => const FutureRealTimePage(
                  code: 'MXFB4',
                ),
              ),
            );
          },
          child: numberText(
            'MXFB4',
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
