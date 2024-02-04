import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:toc_machine_trading_fe/features/order/pages/future.dart';
import 'package:toc_machine_trading_fe/features/order/pages/stock.dart';
import 'package:toc_machine_trading_fe/features/order/pages/stock_combo_trade.dart';
import 'package:toc_machine_trading_fe/features/universal/widgets/app_bar.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topAppBar(
        context,
        AppLocalizations.of(context)!.order,
        automaticallyImplyLeading: true,
        disableActions: true,
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              _buildOrderContainer(AppLocalizations.of(context)!.future, const FutureTradePage()),
              _buildOrderContainer(AppLocalizations.of(context)!.stock, const StockTradePage()),
              _buildOrderContainer(AppLocalizations.of(context)!.target_combo, const StockComboTradePage()),
            ],
          ),
        ),
      ),
    );
  }

  Expanded _buildOrderContainer(String title, Widget page) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.blueAccent,
              Colors.blueGrey,
            ],
          ),
        ),
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(fullscreenDialog: false, builder: (context) => page),
            );
          },
          child: Stack(
            children: [
              const Padding(
                padding: EdgeInsets.all(18.0),
                child: SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Icon(
                      Icons.shopping_cart_checkout,
                      size: 100,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
