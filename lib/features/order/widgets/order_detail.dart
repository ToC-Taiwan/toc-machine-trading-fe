import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:toc_machine_trading_fe/features/order/entity/order.dart';

class OrderDetailWidget extends StatefulWidget {
  const OrderDetailWidget({required this.orderStreamController, super.key});

  final StreamController<Order> orderStreamController;

  @override
  State<OrderDetailWidget> createState() => _OrderDetailWidgetState();
}

class _OrderDetailWidgetState extends State<OrderDetailWidget> with AutomaticKeepAliveClientMixin<OrderDetailWidget> {
  final TextEditingController validTimeController = TextEditingController();

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
          validTimeController.text = OrderValidUntilUnit.m5.printDuration();
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
            AppLocalizations.of(context)!.count,
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
                              maxHeight: MediaQuery.of(context).size.height * 0.75,
                            ),
                            isScrollControlled: true,
                            showDragHandle: true,
                            context: context,
                            builder: (BuildContext context) {
                              return SizedBox(
                                height: MediaQuery.of(context).size.height * 0.35,
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: ScrollablePositionedList.builder(
                                        initialScrollIndex: orderDetail!.count! - 3,
                                        shrinkWrap: true,
                                        itemCount: 999,
                                        itemBuilder: (BuildContext context, int index) {
                                          return ListTile(
                                            title: Center(
                                              child: Text(
                                                (index + 1).toString(),
                                                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                                      color: orderDetail!.count == index + 1 ? Theme.of(context).colorScheme.primary : null,
                                                    ),
                                              ),
                                            ),
                                            onTap: () {
                                              setState(() {
                                                orderDetail!.count = index + 1;
                                              });
                                              widget.orderStreamController.add(orderDetail!);
                                              Navigator.pop(context);
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
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
          _buildRow('${AppLocalizations.of(context)!.valid_until} (HH:MM)', [
            DropdownMenu<OrderValidUntilUnit>(
              leadingIcon: const Icon(Icons.timer),
              selectedTrailingIcon: null,
              enabled: orderDetail != null,
              initialSelection: OrderValidUntilUnit.m5,
              controller: validTimeController,
              requestFocusOnTap: false,
              onSelected: (OrderValidUntilUnit? unit) {
                setState(() {
                  orderDetail!.validUntilUnit = unit;
                });
              },
              inputDecorationTheme: const InputDecorationTheme(border: InputBorder.none),
              dropdownMenuEntries: OrderValidUntilUnit.values.map<DropdownMenuEntry<OrderValidUntilUnit>>((OrderValidUntilUnit unit) {
                return DropdownMenuEntry<OrderValidUntilUnit>(
                  value: unit,
                  label: unit.printDuration(),
                );
              }).toList(),
            )
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
