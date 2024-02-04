import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:toc_machine_trading_fe/features/universal/widgets/app_bar.dart';

class StockComboTradePage extends StatefulWidget {
  const StockComboTradePage({super.key});

  @override
  State<StockComboTradePage> createState() => _StockComboTradePageState();
}

class _StockComboTradePageState extends State<StockComboTradePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topAppBar(
        context,
        '${AppLocalizations.of(context)!.order}(${AppLocalizations.of(context)!.target_combo})',
        automaticallyImplyLeading: true,
        disableActions: true,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Expanded(
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
