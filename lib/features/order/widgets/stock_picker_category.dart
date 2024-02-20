import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:toc_machine_trading_fe/core/api/api.dart';
import 'package:toc_machine_trading_fe/features/balance/entity/position.dart';

class PickerCategoryWidget extends StatefulWidget {
  const PickerCategoryWidget({required this.onConfirm, super.key});
  final Function(String code) onConfirm;

  @override
  State<PickerCategoryWidget> createState() => _PickerCategoryWidgetState();
}

class _PickerCategoryWidgetState extends State<PickerCategoryWidget> with TickerProviderStateMixin {
  late final TabController _tabController;
  late Future<List<PositionStock>?> currentInv;

  String _code = "";

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    currentInv = API.fetchPositionStock();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TabBar(
            onTap: (value) {
              setState(() {
                _code = "";
              });
            },
            controller: _tabController,
            tabs: const [
              Tab(
                icon: Icon(Icons.inventory),
              ),
              Tab(
                icon: Icon(Icons.search),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _tabController,
              children: [
                FutureBuilder(
                  future: currentInv,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index) {
                          return RadioListTile<String>(
                            value: snapshot.data![index].stockNum!,
                            title: Text(snapshot.data![index].stockNum!),
                            groupValue: _code,
                            onChanged: (value) {
                              setState(() {
                                _code = value!;
                              });
                            },
                          );
                        },
                      );
                    }
                    return Center(
                      child: SpinKitWave(
                        color: Theme.of(context).colorScheme.primary,
                        size: 35.0,
                      ),
                    );
                  },
                ),
                SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                  child: Container(
                    margin: const EdgeInsets.all(20),
                    child: const Stack(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          height: double.infinity,
                          child: Icon(
                            Icons.build,
                            size: 100,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(AppLocalizations.of(context)!.cancel),
                ),
                ElevatedButton(
                  onPressed: _code.isNotEmpty
                      ? () {
                          widget.onConfirm(_code);
                          Navigator.pop(context);
                        }
                      : null,
                  child: Text(AppLocalizations.of(context)!.ok),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
