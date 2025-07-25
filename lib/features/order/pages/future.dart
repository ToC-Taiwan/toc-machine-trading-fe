import 'package:flutter/material.dart';
import 'package:toc_machine_trading_fe/l10n/app_localizations.dart';
import 'package:toc_machine_trading_fe/features/universal/widgets/app_bar.dart';

class FutureTradePage extends StatefulWidget {
  const FutureTradePage({super.key});

  @override
  State<FutureTradePage> createState() => _FutureTradePageState();
}

class _FutureTradePageState extends State<FutureTradePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topAppBar(
        context,
        AppLocalizations.of(context)!.future,
        automaticallyImplyLeading: true,
        disableActions: true,
      ),
      // show this page is under development
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Container(
                margin: const EdgeInsets.all(20),
                child: const Stack(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                      child: Icon(
                        Icons.build,
                        size: 100,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
