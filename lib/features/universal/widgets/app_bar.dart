import 'package:flutter/material.dart';
import 'package:toc_machine_trading_fe/core/fcm/fcm.dart';
import 'package:toc_machine_trading_fe/features/notification/pages/notification.dart';
import 'package:toc_machine_trading_fe/features/universal/pages/settings.dart';

AppBar topAppBar(
  BuildContext context,
  String title, {
  Color? titleColor,
  Color? backgroundColor,
  bool automaticallyImplyLeading = false,
  bool disableActions = false,
  List<Widget>? actions,
  PreferredSizeWidget? bottom,
}) {
  List<Widget>? finalActions = disableActions
      ? null
      : actions ??
          [
            StreamBuilder<bool>(
                stream: FCM.notificationCountStream,
                initialData: FCM.hasNotification,
                builder: (context, snapshot) {
                  return Badge(
                    alignment: Alignment.center,
                    isLabelVisible: snapshot.data!,
                    child: IconButton(
                      icon: const Icon(Icons.notifications_outlined),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            fullscreenDialog: true,
                            builder: (context) => const NotificationPage(),
                          ),
                        );
                      },
                    ),
                  );
                }),
            IconButton(
              icon: const Icon(
                Icons.settings,
              ),
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
    iconTheme: automaticallyImplyLeading && titleColor != null ? const IconThemeData(color: Colors.white) : null,
    bottom: bottom,
  );
}
