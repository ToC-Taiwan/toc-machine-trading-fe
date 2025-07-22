import 'package:flutter/material.dart';
import 'package:toc_machine_trading_fe/l10n/app_localizations.dart';
import 'package:toc_machine_trading_fe/features/universal/widgets/app_bar.dart';

class PackageTradePage extends StatefulWidget {
  const PackageTradePage({super.key});

  @override
  State<PackageTradePage> createState() => _PackageTradePageState();
}

class _PackageTradePageState extends State<PackageTradePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topAppBar(
        context,
        AppLocalizations.of(context)!.package,
        automaticallyImplyLeading: true,
        disableActions: true,
      ),
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
