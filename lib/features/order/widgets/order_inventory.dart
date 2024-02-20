import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:toc_machine_trading_fe/features/balance/entity/position.dart';
import 'package:toc_machine_trading_fe/features/universal/utils/utils.dart';

class OrderInventoryWidget extends StatefulWidget {
  const OrderInventoryWidget({required this.inv, super.key});
  final PositionStock? inv;

  @override
  State<OrderInventoryWidget> createState() => _OrderInventoryWidgetState();
}

class _OrderInventoryWidgetState extends State<OrderInventoryWidget> {
  @override
  Widget build(BuildContext context) {
    return widget.inv == null
        ? Center(
            child: Text(
              AppLocalizations.of(context)!.no_data,
              style: Theme.of(context).textTheme.titleMedium!,
            ),
          )
        : ListView.builder(
            shrinkWrap: true,
            itemCount: widget.inv!.position!.length,
            itemBuilder: (context, index) {
              var item = widget.inv!.position![index];
              return ListTile(
                leading: Icon(
                  item.pnl! > 0 ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                  color: item.pnl! > 0 ? Colors.red : Colors.green,
                ),
                title: Text(
                  Utils.ntdCurrency(item.price!),
                ),
                subtitle: Text(
                  item.date.toString().substring(0, 10),
                ),
                trailing: Text(
                  item.pnl.toString(),
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: item.pnl! > 0 ? Colors.red : Colors.green,
                      ),
                ),
              );
            },
          );
  }
}
