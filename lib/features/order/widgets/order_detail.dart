import 'dart:async';

import 'package:flutter/material.dart';
import 'package:toc_machine_trading_fe/l10n/app_localizations.dart';
import 'package:toc_machine_trading_fe/features/order/entity/order.dart';
import 'package:toc_machine_trading_fe/features/order/widgets/count_selector.dart';

class OrderDetailWidget extends StatefulWidget {
  const OrderDetailWidget({required this.orderStreamController, super.key});

  final StreamController<Order> orderStreamController;

  @override
  State<OrderDetailWidget> createState() => _OrderDetailWidgetState();
}

class _OrderDetailWidgetState extends State<OrderDetailWidget> with AutomaticKeepAliveClientMixin<OrderDetailWidget> {
  Order? orderDetail;
  int? _priceIndex;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    widget.orderStreamController.stream.listen(
      (Order order) {
        if (orderDetail == null || orderDetail!.code != order.code) {
          orderDetail = order;
          _priceIndex = orderDetail!.availablePrice!.indexWhere((element) => element == orderDetail!.price);
        }
      },
    );
  }

  @override
  void setState(VoidCallback fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SizedBox(
      child: Column(
        children: [
          _buildRow(
              AppLocalizations.of(context)!.price,
              orderDetail == null
                  ? null
                  : [
                      Expanded(
                        child: IconButton(
                          onPressed: () {
                            if (orderDetail!.price! > orderDetail!.availablePrice!.first) {
                              setState(() {
                                _priceIndex = _priceIndex! - 1;
                                orderDetail!.price = orderDetail!.availablePrice![_priceIndex!];
                              });
                              widget.orderStreamController.add(orderDetail!);
                            }
                          },
                          icon: const Icon(Icons.remove),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            orderDetail!.availablePrice![_priceIndex!].toString(),
                            style: Theme.of(context).textTheme.bodyLarge!,
                          ),
                        ),
                      ),
                      Expanded(
                        child: IconButton(
                          onPressed: () {
                            if (orderDetail!.price! < orderDetail!.availablePrice!.last) {
                              setState(() {
                                _priceIndex = _priceIndex! + 1;
                                orderDetail!.price = orderDetail!.availablePrice![_priceIndex!];
                              });
                              widget.orderStreamController.add(orderDetail!);
                            }
                          },
                          icon: const Icon(Icons.add),
                        ),
                      ),
                    ]),
          _buildRow(
            AppLocalizations.of(context)!.trade_count,
            orderDetail == null
                ? null
                : [
                    Expanded(
                      child: IconButton(
                        onPressed: () {
                          if (orderDetail!.count! > 1) {
                            setState(() {
                              orderDetail!.count = orderDetail!.count! - 1;
                            });
                            widget.orderStreamController.add(orderDetail!);
                          }
                        },
                        icon: const Icon(Icons.remove),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          showModalBottomSheet(
                            constraints: BoxConstraints(
                              maxHeight: MediaQuery.of(context).size.height * 0.45,
                            ),
                            isScrollControlled: true,
                            showDragHandle: true,
                            context: context,
                            builder: (context) => CountSelector(
                              onConfirm: sendCount,
                              currentCount: orderDetail!.count!,
                            ),
                          );
                        },
                        child: Center(
                          child: Text(
                            orderDetail!.count.toString(),
                            style: Theme.of(context).textTheme.bodyLarge!,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: IconButton(
                        onPressed: () {
                          if (orderDetail!.count! < 999) {
                            setState(() {
                              orderDetail!.count = orderDetail!.count! + 1;
                            });
                            widget.orderStreamController.add(orderDetail!);
                          }
                        },
                        icon: const Icon(Icons.add),
                      ),
                    ),
                  ],
          ),
          _buildRow(
              '${AppLocalizations.of(context)!.valid_until} (HH:MM)',
              orderDetail == null
                  ? null
                  : [
                      Expanded(
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              orderDetail!.validUntilUnit = orderDetail!.validUntilUnit!.previous();
                            });
                          },
                          icon: const Icon(Icons.keyboard_arrow_left_outlined),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            orderDetail!.validUntilUnit!.printDuration(),
                            style: Theme.of(context).textTheme.bodyLarge!,
                          ),
                        ),
                      ),
                      Expanded(
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              orderDetail!.validUntilUnit = orderDetail!.validUntilUnit!.next();
                            });
                          },
                          icon: const Icon(Icons.keyboard_arrow_right_outlined),
                        ),
                      ),
                    ]),
          _buildRow(AppLocalizations.of(context)!.auto_close, [
            Expanded(child: Container()),
            Expanded(
              child: Switch(
                value: orderDetail?.autoClose ?? false,
                onChanged: orderDetail == null
                    ? null
                    : (bool value) {
                        setState(() {
                          orderDetail!.autoClose = value;
                        });
                        widget.orderStreamController.add(orderDetail!);
                      },
              ),
            ),
          ]),
        ],
      ),
    );
  }

  void sendCount(int count) {
    setState(() {
      orderDetail!.count = count;
    });
    widget.orderStreamController.add(orderDetail!);
  }

  Expanded _buildRow(String title, List<Widget>? children) {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                title,
                style: Theme.of(context).textTheme.bodyLarge!,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: children ?? <Widget>[],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
