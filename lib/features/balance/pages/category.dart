import 'package:flutter/material.dart';
import 'package:toc_machine_trading_fe/l10n/app_localizations.dart';
import 'package:toc_machine_trading_fe/features/balance/pages/balance.dart';
import 'package:toc_machine_trading_fe/features/balance/pages/inventory.dart';
import 'package:toc_machine_trading_fe/features/balance/pages/wallet.dart';
import 'package:toc_machine_trading_fe/features/universal/widgets/app_bar.dart';

class BalanceCategoryPage extends StatefulWidget {
  const BalanceCategoryPage({super.key});

  @override
  State<BalanceCategoryPage> createState() => _BalanceCategoryPageState();
}

class _BalanceCategoryPageState extends State<BalanceCategoryPage> with TickerProviderStateMixin {
  late final TabController _tabController;

  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 3,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _buildSegmentedControl(),
      appBar: topAppBar(
        context,
        _selectedIndex == 0
            ? AppLocalizations.of(context)!.balance
            : _selectedIndex == 1
                ? AppLocalizations.of(context)!.inventory
                : AppLocalizations.of(context)!.wallet,
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return SizedBox(
            width: constraints.maxWidth,
            height: constraints.maxHeight * 0.9,
            child: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _tabController,
              children: const [
                BalanceContent(),
                InventoryContent(),
                WalletContent(),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildSegmentedControl() {
    return Material(
      elevation: 1,
      borderRadius: BorderRadius.circular(30),
      child: SegmentedButton<int>(
        showSelectedIcon: false,
        style: ButtonStyle(
          side: WidgetStateProperty.all(
            BorderSide(
              color: Colors.transparent,
            ),
          ),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
        segments: [
          ButtonSegment<int>(
            value: 0,
            icon: const Icon(
              Icons.history,
              color: Colors.blueGrey,
            ),
            label: Text(
              AppLocalizations.of(context)!.balance,
            ),
          ),
          ButtonSegment<int>(
            icon: const Icon(
              Icons.inventory,
              color: Colors.red,
            ),
            value: 1,
            label: Text(
              AppLocalizations.of(context)!.inventory,
            ),
          ),
          ButtonSegment<int>(
            value: 2,
            icon: const Icon(
              Icons.account_balance_wallet,
              color: Colors.deepOrange,
            ),
            label: Text(
              AppLocalizations.of(context)!.wallet,
            ),
          ),
        ],
        selected: <int>{_selectedIndex},
        onSelectionChanged: (Set<int> newSelection) {
          if (_selectedIndex == newSelection.first) return;
          setState(() {
            _selectedIndex = newSelection.first;
            _tabController.animateTo(_selectedIndex);
          });
        },
      ),
    );
  }
}
