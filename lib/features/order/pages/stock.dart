import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:toc_machine_trading_fe/features/universal/widgets/app_bar.dart';

class StockTradePage extends StatefulWidget {
  const StockTradePage({super.key});

  @override
  State<StockTradePage> createState() => _StockTradePageState();
}

class _StockTradePageState extends State<StockTradePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topAppBar(
        context,
        '${AppLocalizations.of(context)!.order}(${AppLocalizations.of(context)!.stock})',
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
                        color: Colors.blueGrey,
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
