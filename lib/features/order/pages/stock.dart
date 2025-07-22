import 'package:flutter/material.dart';
import 'package:toc_machine_trading_fe/l10n/app_localizations.dart';
import 'package:toc_machine_trading_fe/features/order/widgets/place_order.dart';
import 'package:toc_machine_trading_fe/features/universal/widgets/app_bar.dart';

class StockTradePage extends StatefulWidget {
  const StockTradePage({super.key});

  @override
  State<StockTradePage> createState() => _StockTradePageState();
}

class _StockTradePageState extends State<StockTradePage> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: topAppBar(
        context,
        AppLocalizations.of(context)!.stock,
        automaticallyImplyLeading: true,
        disableActions: true,
        bottom: TabBar(
          indicatorSize: TabBarIndicatorSize.label,
          physics: const NeverScrollableScrollPhysics(),
          controller: _tabController,
          tabs: <Widget>[
            Tab(
              child: Text(
                AppLocalizations.of(context)!.odd,
                style: Theme.of(context).textTheme.titleMedium!,
              ),
            ),
            Tab(
              child: Text(
                AppLocalizations.of(context)!.lot,
                style: Theme.of(context).textTheme.titleMedium!,
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          controller: _tabController,
          children: const <Widget>[
            PlaceOrderWidget(isOdd: true),
            PlaceOrderWidget(isOdd: false),
          ],
        ),
      ),
    );
  }
}
