import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:toc_machine_trading_fe/core/api/api.dart';
import 'package:toc_machine_trading_fe/features/balance/entity/position.dart';
import 'package:toc_machine_trading_fe/features/realtime/entity/stock.dart';
import 'package:toc_machine_trading_fe/features/universal/utils/utils.dart';

class InventoryContent extends StatefulWidget {
  const InventoryContent({super.key});

  @override
  State<InventoryContent> createState() => _InventoryContentState();
}

class _InventoryContentState extends State<InventoryContent> with AutomaticKeepAliveClientMixin<InventoryContent> {
  final RefreshController _refreshController = RefreshController(initialRefresh: false);
  static Map<String, String> stockNameMap = {};

  Future<List<PositionStock>?> inventory = _getInventory();

  @override
  bool get wantKeepAlive => true;

  @override
  void setState(VoidCallback fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return FutureBuilder<List<PositionStock>?>(
      future: inventory,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          var data = snapshot.data as List<PositionStock>;
          return SmartRefresher(
            controller: _refreshController,
            header: const MaterialClassicHeader(
              color: Colors.grey,
            ),
            enablePullDown: true,
            onRefresh: _onRefresh,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: data.length,
              itemBuilder: (context, index) {
                var stock = data[index];
                var total = 0;
                var totalPnl = 0;
                if (stock.position != null) {
                  for (var item in stock.position!) {
                    total += item.price!;
                    totalPnl += item.pnl!;
                  }
                }
                return ExpansionTile(
                  shape: const Border(
                    bottom: BorderSide(
                      color: Colors.grey,
                      width: 0.5,
                    ),
                  ),
                  childrenPadding: const EdgeInsets.only(left: 25),
                  leading: Text(
                    stock.stockNum!,
                    style: Theme.of(context).textTheme.titleMedium!,
                  ),
                  title: Text(
                    stockNameMap[stock.stockNum!]!,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  children: [
                    for (var item in data[index].position!)
                      ListTile(
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
                      ),
                    ListTile(
                      leading: const Icon(Icons.attach_money),
                      title: Text(Utils.ntdCurrency(total)),
                      subtitle: Text(AppLocalizations.of(context)!.total),
                      trailing: Text(
                        totalPnl.toString(),
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: totalPnl > 0 ? Colors.red : Colors.green,
                            ),
                      ),
                    )
                  ],
                );
              },
            ),
          );
        }
        return Center(
          child: Text(
            AppLocalizations.of(context)!.no_data,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 30,
            ),
          ),
        );
      },
    );
  }

  static Future<List<PositionStock>?> _getInventory() => API.fetchPositionStock().then((value) async {
        var stockArr = <String>[];
        for (final i in value!) {
          stockArr.add(i.stockNum!);
        }
        List<StockDetail> stockDetail = await API.fetchStockDetail(stockArr);
        for (final i in stockDetail) {
          if (i.name!.isEmpty) {
            continue;
          }
          stockNameMap[i.number!] = i.name!;
        }
        return value;
      });

  void _onRefresh() async {
    setState(() {
      inventory = _getInventory().then((value) {
        Future.delayed(const Duration(milliseconds: 1000)).then((value) => _refreshController.refreshCompleted());
        return value;
      });
    });
  }
}
