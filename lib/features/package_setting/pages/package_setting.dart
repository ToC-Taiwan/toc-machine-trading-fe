import 'package:flutter/material.dart';
import 'package:toc_machine_trading_fe/l10n/app_localizations.dart';
import 'package:toc_machine_trading_fe/features/universal/widgets/app_bar.dart';

class PackageSettingPage extends StatefulWidget {
  const PackageSettingPage({super.key});

  @override
  State<PackageSettingPage> createState() => _PackageSettingPageState();
}

class _PackageSettingPageState extends State<PackageSettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topAppBar(
        context,
        AppLocalizations.of(context)!.package,
        automaticallyImplyLeading: true,
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
