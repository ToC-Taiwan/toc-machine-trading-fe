import 'dart:async';

import 'package:flutter/material.dart';
import 'package:toc_machine_trading_fe/core/api/api.dart';
import 'package:toc_machine_trading_fe/features/balance/entity/position.dart';
import 'package:toc_machine_trading_fe/features/order/entity/order.dart';
import 'package:toc_machine_trading_fe/features/order/widgets/order_detail.dart';
import 'package:toc_machine_trading_fe/features/order/widgets/order_inventory.dart';

class OrderOptionWidget extends StatefulWidget {
  const OrderOptionWidget({required this.orderStreamController, super.key});
  final StreamController<Order> orderStreamController;

  @override
  State<OrderOptionWidget> createState() => _OrderOptionWidgetState();
}

class _OrderOptionWidgetState extends State<OrderOptionWidget> with TickerProviderStateMixin {
  late final TabController _tabController;

  PositionStock? currentInv;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 2,
      vsync: this,
    );

    widget.orderStreamController.stream.listen((Order order) async {
      if (currentInv == null || currentInv!.stockNum != order.code) {
        currentInv = await API.fetchPositionStock(code: order.code).then((value) {
          if (value!.isEmpty) {
            return null;
          }
          return value[0];
        });
      }

      setState(() {
        _selectedIndex = 0;
      });
      _tabController.animateTo(0);
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(0),
      clipBehavior: Clip.hardEdge,
      child: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: TabBarView(
                physics: const NeverScrollableScrollPhysics(),
                controller: _tabController,
                children: [
                  OrderDetailWidget(orderStreamController: widget.orderStreamController),
                  OrderInventoryWidget(inv: currentInv),
                ],
              ),
            ),
            BottomAppBar(
              surfaceTintColor: Colors.transparent,
              color: Colors.transparent,
              child: IconTheme(
                data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.backup_table_outlined,
                        color: _selectedIndex != 0
                            ? Theme.of(context).colorScheme.secondary
                            : Theme.of(context).colorScheme.primary,
                      ),
                      onPressed: () {
                        setState(() {
                          _selectedIndex = 0;
                        });
                        _tabController.animateTo(0);
                      },
                    ),
                    IconButton(
                      icon: Badge(
                        label: Text(currentInv != null ? currentInv!.position!.length.toString() : ''),
                        isLabelVisible: currentInv != null && currentInv!.position!.isNotEmpty,
                        child: Icon(
                          Icons.history_edu_sharp,
                          color: _selectedIndex != 1 ? Colors.grey[500] : Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          _selectedIndex = 1;
                        });
                        _tabController.animateTo(1);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
