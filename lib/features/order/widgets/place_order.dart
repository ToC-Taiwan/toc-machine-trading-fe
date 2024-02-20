import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:toc_machine_trading_fe/core/api/api.dart';
import 'package:toc_machine_trading_fe/core/error/error.dart';
import 'package:toc_machine_trading_fe/features/order/entity/order.dart';
import 'package:toc_machine_trading_fe/features/order/widgets/order_detail_category.dart';
import 'package:toc_machine_trading_fe/features/order/widgets/stock_picker.dart';

class PlaceOrderWidget extends StatefulWidget {
  const PlaceOrderWidget({required this.isOdd, super.key});
  final bool isOdd;

  @override
  State<PlaceOrderWidget> createState() => _PlaceOrderWidgetState();
}

class _PlaceOrderWidgetState extends State<PlaceOrderWidget> {
  final StreamController<Order> _orderStreamController = StreamController<Order>.broadcast();

  OrderAction _action = OrderAction.none;
  Order? orderDetail;

  @override
  void initState() {
    super.initState();
    _orderStreamController.stream.listen((Order order) {
      if (orderDetail == null || orderDetail!.code != order.code) {
        setState(() {
          orderDetail = order;
          _action = OrderAction.none;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: StockPickerWidget(
                orderStreamController: _orderStreamController,
                isOdd: widget.isOdd,
              ),
            ),
            const Divider(
              color: Colors.transparent,
              height: 5,
            ),
            Expanded(
              flex: 5,
              child: OrderOptionWidget(orderStreamController: _orderStreamController),
            ),
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(child: _buildActionButton(OrderAction.buy)),
                        Expanded(child: _buildActionButton(OrderAction.sell)),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(child: _buildActionButton(OrderAction.sellFirst)),
                        Expanded(child: _buildActionButton(OrderAction.buyLater)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: (orderDetail != null && _action != OrderAction.none)
                        ? Theme.of(context).colorScheme.secondary
                        : Theme.of(context).colorScheme.background,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    if (orderDetail == null) {
                      return;
                    }
                    orderDetail!.action = _action;
                    sendOrder(orderDetail!).then((_) {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text(
                            AppLocalizations.of(context)!.success,
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          actions: <Widget>[
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  _action = OrderAction.none;
                                });
                                Navigator.pop(context);
                              },
                              child: Text(
                                AppLocalizations.of(context)!.ok,
                                style: const TextStyle(color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      );
                    }).catchError((e) {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text(
                            AppLocalizations.of(context)!.error,
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          content: Text(ErrorCode.toMsg(context, e)),
                          actions: <Widget>[
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                AppLocalizations.of(context)!.ok,
                                style: const TextStyle(color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      );
                    });
                  },
                  child: Text(
                    AppLocalizations.of(context)!.send,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: (orderDetail != null && _action != OrderAction.none) ? Colors.white : Colors.grey,
                        ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActionButton(OrderAction action) {
    EdgeInsetsGeometry? margin;
    switch (action) {
      case OrderAction.buy:
        margin = const EdgeInsets.only(top: 5, bottom: 5, right: 2.5);
        break;
      case OrderAction.sell:
        margin = const EdgeInsets.only(bottom: 5, right: 2.5);
        break;
      case OrderAction.sellFirst:
        margin = const EdgeInsets.only(top: 5, bottom: 5, left: 2.5);
        break;
      case OrderAction.buyLater:
        margin = const EdgeInsets.only(bottom: 5, left: 2.5);
        break;
      default:
        margin = const EdgeInsets.all(0);
    }

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Container(
          margin: margin,
          width: double.infinity,
          height: constraints.maxHeight * 0.8,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              backgroundColor: _action != action
                  ? Theme.of(context).colorScheme.background
                  : _action == OrderAction.buy
                      ? Colors.redAccent
                      : _action == OrderAction.sell
                          ? Colors.greenAccent
                          : _action == OrderAction.sellFirst
                              ? Colors.greenAccent
                              : Colors.redAccent,
            ),
            onPressed: orderDetail == null
                ? null
                : () {
                    if (action != OrderAction.buy) return;
                    setState(() {
                      if (_action == action) {
                        _action = OrderAction.none;
                        return;
                      }
                      _action = action;
                    });
                  },
            child: Text(
              action == OrderAction.buy
                  ? AppLocalizations.of(context)!.buy
                  : action == OrderAction.sell
                      ? AppLocalizations.of(context)!.sell
                      : action == OrderAction.sellFirst
                          ? AppLocalizations.of(context)!.sell_first
                          : AppLocalizations.of(context)!.buy_later,
              style: const TextStyle(color: Colors.black),
            ),
          ),
        );
      },
    );
  }

  Future<void> sendOrder(Order orderDetail) async {
    switch (orderDetail.type) {
      case OrderType.stock:
        throw ErrorCode.underDevelopment;
      case OrderType.stockOdd:
        if (orderDetail.action == OrderAction.buy) {
          await API.buyOddStock(
            code: orderDetail.code!,
            price: orderDetail.price!,
            share: orderDetail.count!,
          );
        }
        break;
      case OrderType.future:
        throw ErrorCode.underDevelopment;
      case OrderType.combo:
        throw ErrorCode.underDevelopment;
      default:
        return;
    }
  }
}
