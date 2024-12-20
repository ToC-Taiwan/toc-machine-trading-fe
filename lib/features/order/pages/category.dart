import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:toc_machine_trading_fe/features/order/pages/future.dart';
import 'package:toc_machine_trading_fe/features/order/pages/package.dart';
import 'package:toc_machine_trading_fe/features/order/pages/stock.dart';
import 'package:toc_machine_trading_fe/features/universal/widgets/app_bar.dart';

abstract class CommissionCategoryCache {
  static int index = 0;

  static void setIndex(int value) {
    index = value;
  }

  static int getIndex() {
    return index;
  }

  static void clear() {
    index = 0;
  }
}

class CommissionCategoryPage extends StatefulWidget {
  const CommissionCategoryPage({super.key});

  @override
  State<CommissionCategoryPage> createState() => _CommissionCategoryPageState();
}

class _CommissionCategoryPageState extends State<CommissionCategoryPage> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 3,
      vsync: this,
      initialIndex: CommissionCategoryCache.getIndex(),
    );
  }

  @override
  void setState(VoidCallback fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvokedWithResult: (_, __) {
        CommissionCategoryCache.clear();
      },
      child: Scaffold(
        appBar: topAppBar(
          context,
          AppLocalizations.of(context)!.commission,
          automaticallyImplyLeading: true,
          bottom: TabBar(
            onTap: (index) {
              CommissionCategoryCache.setIndex(index);
            },
            indicatorSize: TabBarIndicatorSize.label,
            physics: const NeverScrollableScrollPhysics(),
            controller: _tabController,
            tabs: <Widget>[
              Tab(
                child: Text(
                  AppLocalizations.of(context)!.stock,
                  style: Theme.of(context).textTheme.titleMedium!,
                ),
              ),
              Tab(
                child: Text(
                  AppLocalizations.of(context)!.future,
                  style: Theme.of(context).textTheme.titleMedium!,
                ),
              ),
              Tab(
                child: Text(
                  AppLocalizations.of(context)!.package,
                  style: Theme.of(context).textTheme.titleMedium!,
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          controller: _tabController,
          children: [
            Container(),
            Container(),
            Container(),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                fullscreenDialog: true,
                builder: (context) => _tabController.index == 0
                    ? const PackageTradePage()
                    : _tabController.index == 1
                        ? const StockTradePage()
                        : const FutureTradePage(),
              ),
            );
          },
          label: Text(AppLocalizations.of(context)!.place_order),
          icon: const Icon(Icons.shopping_cart_checkout_outlined),
        ),
      ),
    );
  }
}
