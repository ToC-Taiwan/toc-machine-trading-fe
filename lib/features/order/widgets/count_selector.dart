import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class CountSelector extends StatefulWidget {
  const CountSelector({
    required this.onConfirm,
    required this.currentCount,
    this.maxCount = 999,
    this.minCount = 1,
    this.countPerTab = 100,
    super.key,
  });

  final Function(int count) onConfirm;
  final int currentCount;
  final int maxCount;
  final int minCount;
  final int countPerTab;

  @override
  State<CountSelector> createState() => _CountSelectorState();
}

class _CountSelectorState extends State<CountSelector> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    int tabCount = widget.maxCount ~/ widget.countPerTab + 1;
    _tabController = TabController(length: tabCount, vsync: this);
    _tabController.animateTo((widget.currentCount - 1) ~/ widget.countPerTab);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  List<Widget> _buildTabs() {
    final List<Widget> tabs = [];
    for (var i = 0; i < widget.maxCount; i += widget.countPerTab) {
      tabs.add(Tab(
        text: "${i + 1} - ${i + widget.countPerTab > widget.maxCount ? widget.maxCount : i + widget.countPerTab - 1}",
      ));
    }
    return tabs;
  }

  List<Widget> _buildTabViews() {
    final List<Widget> tabViews = [];
    for (var i = 0; i < widget.maxCount; i += widget.countPerTab) {
      bool inThisTab = widget.currentCount >= i && widget.currentCount < i + widget.countPerTab;
      tabViews.add(
        ScrollablePositionedList.builder(
          shrinkWrap: true,
          initialScrollIndex: !inThisTab
              ? 0
              : widget.currentCount % widget.countPerTab - 3 < 0
                  ? 0
                  : widget.currentCount % widget.countPerTab - 3,
          itemCount: widget.countPerTab,
          itemBuilder: (context, index) {
            final int count = i + index + 1;
            if (count > widget.maxCount) {
              return const SizedBox();
            }

            return ListTile(
              title: Center(
                child: Text(
                  "$count",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: widget.currentCount == count ? Theme.of(context).colorScheme.primary : null,
                        fontWeight: widget.currentCount == count ? FontWeight.bold : null,
                      ),
                ),
              ),
              onTap: () {
                widget.onConfirm(count);
                Navigator.of(context).pop();
              },
            );
          },
        ),
      );
    }
    return tabViews;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TabBar(
            isScrollable: true,
            controller: _tabController,
            tabs: _buildTabs(),
          ),
          Expanded(
            child: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _tabController,
              children: _buildTabViews(),
            ),
          ),
        ],
      ),
    );
  }
}
