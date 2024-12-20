import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:toc_machine_trading_fe/features/realtime/entity/pick_operation.dart';
import 'package:toc_machine_trading_fe/features/realtime/widgets/pick.dart';
import 'package:toc_machine_trading_fe/features/universal/widgets/app_bar.dart';

class PickStockCategoryPage extends StatefulWidget {
  const PickStockCategoryPage({super.key});

  @override
  State<PickStockCategoryPage> createState() => _PickStockCategoryPageState();
}

class _PickStockCategoryPageState extends State<PickStockCategoryPage> with TickerProviderStateMixin {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final TextEditingController textFieldController = TextEditingController();
  final StreamController<PickStockModifiyBody> _streamController = StreamController<PickStockModifiyBody>.broadcast();

  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
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
        ScaffoldMessenger.of(context).clearSnackBars();
      },
      child: Scaffold(
        appBar: topAppBar(
          context,
          AppLocalizations.of(context)!.pick_stock,
          automaticallyImplyLeading: true,
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.label,
            controller: _tabController,
            tabs: <Widget>[
              Tab(
                child: Text(
                  AppLocalizations.of(context)!.lot,
                  style: Theme.of(context).textTheme.titleMedium!,
                ),
              ),
              Tab(
                child: Text(
                  AppLocalizations.of(context)!.odd,
                  style: Theme.of(context).textTheme.titleMedium!,
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.delete_forever_rounded),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text(
                      AppLocalizations.of(context)!.delete_all_pick_stock,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    content: Text(AppLocalizations.of(context)!.delete_all_pick_stock_confirm),
                    actions: <Widget>[
                      ElevatedButton(
                        child: Text(
                          AppLocalizations.of(context)!.cancel,
                          style: const TextStyle(color: Colors.red),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      ElevatedButton(
                        onPressed: () {
                          _streamController.add(PickStockModifiyBody(
                            operationType: OperationType.removeAll,
                          ));
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
              },
            ),
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text(
                      AppLocalizations.of(context)!.type_stock_number,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    content: Form(
                      key: _formkey,
                      child: TextFormField(
                        controller: textFieldController,
                        enableSuggestions: false,
                        autocorrect: false,
                        decoration: InputDecoration(
                          hintText: '${AppLocalizations.of(context)!.stock_number}(2330, 2618...)',
                        ),
                        keyboardType: TextInputType.number,
                        autofocus: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return AppLocalizations.of(context)!.input_must_not_empty;
                          }
                          if (value.contains(' ')) {
                            return AppLocalizations.of(context)!.cannot_contain_space;
                          }
                          return null;
                        },
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                      ),
                    ),
                    actions: <Widget>[
                      ElevatedButton(
                        child: Text(
                          AppLocalizations.of(context)!.cancel,
                          style: const TextStyle(color: Colors.red),
                        ),
                        onPressed: () {
                          textFieldController.clear();
                          Navigator.pop(context);
                        },
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if (!_formkey.currentState!.validate()) {
                            return;
                          }
                          _streamController.add(PickStockModifiyBody(
                            operationType: OperationType.add,
                            addStock: textFieldController.text,
                          ));
                          textFieldController.clear();
                          Navigator.pop(context);
                        },
                        child: Text(
                          AppLocalizations.of(context)!.add,
                          style: const TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                );
              },
            )
          ],
        ),
        body: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          controller: _tabController,
          children: [
            PickStockWidget(_streamController, false),
            PickStockWidget(_streamController, true),
          ],
        ),
      ),
    );
  }
}
