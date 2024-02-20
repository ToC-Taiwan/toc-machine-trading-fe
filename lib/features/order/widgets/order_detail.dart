import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:toc_machine_trading_fe/features/order/entity/order.dart';

class OrderDetailWidget extends StatefulWidget {
  const OrderDetailWidget({required this.orderStreamController, super.key});

  final StreamController<Order> orderStreamController;

  @override
  State<OrderDetailWidget> createState() => _OrderDetailWidgetState();
}

class _OrderDetailWidgetState extends State<OrderDetailWidget> with AutomaticKeepAliveClientMixin<OrderDetailWidget> {
  final CarouselController _controller = CarouselController();
  final TextEditingController validTimeController = TextEditingController();

  Order? orderDetail;
  int? _priceIndex;

  int _countIndex = 0;
  List<int> availableCount = List<int>.generate(999, (int index) => index + 1);

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
          _controller.onReady.then((_) {
            _controller.jumpToPage(0);
          });
          validTimeController.text = OrderValidUntilUnit.m5.printDuration();
        }
      },
    );
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
                        flex: 2,
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
                      child: CarouselSlider.builder(
                        carouselController: _controller,
                        options: CarouselOptions(
                          initialPage: 0,
                          viewportFraction: 0.35,
                          autoPlay: false,
                          enableInfiniteScroll: false,
                          onPageChanged: (index, reason) => setState(
                            () {
                              _countIndex = index;
                              orderDetail!.count = availableCount[index];
                              widget.orderStreamController.add(orderDetail!);
                            },
                          ),
                        ),
                        itemCount: availableCount.length,
                        itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
                          return Center(
                            child: Text(
                              availableCount[itemIndex].toString(),
                              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    fontSize: itemIndex == _countIndex ? 24 : 12,
                                    color: (orderDetail!.count != availableCount[itemIndex]) ? Colors.grey : Colors.black,
                                  ),
                            ),
                          );
                        },
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
