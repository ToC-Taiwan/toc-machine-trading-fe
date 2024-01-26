import 'package:another_flushbar/flushbar.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:toc_machine_trading_fe/core/api/api.dart';
import 'package:toc_machine_trading_fe/core/fcm/fcm.dart';
import 'package:toc_machine_trading_fe/features/balance/pages/balance.dart';
import 'package:toc_machine_trading_fe/features/notification/pages/notification.dart';
import 'package:toc_machine_trading_fe/features/realtime/pages/category.dart';
import 'package:toc_machine_trading_fe/features/targets/pages/targets.dart';

class HomePage extends StatefulWidget {
  const HomePage({required this.notificationIsUnread, super.key});

  final bool notificationIsUnread;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> pages = [
    const TargestPage(),
    const RealTimeCategoryPage(),
    const BalancePage(),
    const NotificationPage(),
  ];

  int currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    FCM.postInit(_showNotification);
    sendToken();
  }

  void sendToken() async {
    await API.sendToken(FCM.allowPush, FCM.getToken);
  }

  void _showNotification(RemoteMessage msg) async {
    if (!FCM.allowPush || msg.notification == null || currentPageIndex == 3) {
      return;
    }

    await Flushbar(
      onTap: (flushbar) {
        flushbar.dismiss();
        setState(() {
          currentPageIndex = 3;
        });
      },
      margin: const EdgeInsets.all(8),
      borderRadius: BorderRadius.circular(8),
      duration: const Duration(milliseconds: 5000),
      titleColor: Colors.grey,
      flushbarPosition: FlushbarPosition.TOP,
      flushbarStyle: FlushbarStyle.FLOATING,
      reverseAnimationCurve: Curves.easeInToLinear,
      forwardAnimationCurve: Curves.easeInToLinear,
      backgroundColor: Colors.white,
      leftBarIndicatorColor: Colors.blueGrey,
      isDismissible: true,
      icon: const Icon(
        Icons.notifications,
        color: Colors.blueGrey,
        size: 30,
      ),
      titleText: Text(
        msg.notification!.title!,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18.0,
          color: Colors.grey,
        ),
      ),
      messageText: Text(
        msg.notification!.body!,
        style: const TextStyle(
          fontSize: 16.0,
          color: Colors.black,
        ),
      ),
      boxShadows: const [
        BoxShadow(
          color: Colors.grey,
          offset: Offset(0.0, 5.0),
          blurRadius: 10.0,
        )
      ],
    ).show(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPageIndex],
      bottomNavigationBar: NavigationBar(
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        animationDuration: const Duration(milliseconds: 250),
        backgroundColor: Colors.white,
        indicatorColor: Colors.blueGrey,
        elevation: 0,
        height: 50,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: <Widget>[
          NavigationDestination(
            icon: Icon(
              Icons.account_balance_outlined,
              color: currentPageIndex != 0 ? null : Colors.white,
            ),
            label: AppLocalizations.of(context)!.targets,
          ),
          NavigationDestination(
            icon: Icon(
              Icons.dashboard_customize,
              color: currentPageIndex != 1 ? null : Colors.white,
            ),
            label: AppLocalizations.of(context)!.realtime,
          ),
          NavigationDestination(
            icon: Icon(
              Icons.money,
              color: currentPageIndex != 2 ? null : Colors.white,
            ),
            label: AppLocalizations.of(context)!.balance,
          ),
          NavigationDestination(
            icon: StreamBuilder<bool>(
                stream: FCM.notificationCountStream,
                initialData: widget.notificationIsUnread,
                builder: (context, snapshot) {
                  return Badge(
                    isLabelVisible: snapshot.data!,
                    child: Icon(
                      Icons.notifications_outlined,
                      color: currentPageIndex != 3 ? null : Colors.white,
                    ),
                  );
                }),
            label: AppLocalizations.of(context)!.notification,
          ),
        ],
      ),
    );
  }
}