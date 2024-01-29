import 'package:flutter/material.dart';
import 'package:toc_machine_trading_fe/features/universal/pages/settings.dart';

AppBar topAppBar(
  BuildContext context,
  String title, {
  Color? titleColor,
  Color? backgroundColor,
  bool automaticallyImplyLeading = false,
  bool disableActions = false,
  List<Widget>? actions,
}) {
  List<Widget>? finalActions = disableActions
      ? null
      : actions ??
          [
            IconButton(
              icon: const Icon(Icons.settings_outlined, color: Colors.blueGrey),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    fullscreenDialog: true,
                    builder: (context) => const SettingsPage(),
                  ),
                );
              },
            ),
          ];

  if (finalActions != null && finalActions.isNotEmpty) {
    // // all elements must be [IconButton]
    // for (final action in finalActions) {
    //   assert(action is IconButton);
    // }

    finalActions.last = Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: finalActions.last,
    );
  }

  return AppBar(
    centerTitle: automaticallyImplyLeading,
    title: Text(
      title,
      style: Theme.of(context).textTheme.headlineMedium!.copyWith(
            fontWeight: FontWeight.bold,
            color: titleColor,
          ),
    ),
    automaticallyImplyLeading: automaticallyImplyLeading,
    actions: finalActions,
    backgroundColor: backgroundColor,
  );
}
