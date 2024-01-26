import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:toc_machine_trading_fe/core/fcm/fcm.dart';
import 'package:toc_machine_trading_fe/features/universal/widgets/app_bar.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  final Stream<bool> newNotification = FCM.notificationCountStream;
  late Future<List<NotificationMessage>?> notifications;

  @override
  void initState() {
    super.initState();
    notifications = FCM.getNotifications();
    registerUpdate();
    AppLifecycleListener(
      onResume: refreshData,
    );
  }

  void registerUpdate() {
    newNotification.listen((_) => refreshData());
  }

  void refreshData() {
    if (!mounted) {
      return;
    }
    setState(() {
      notifications = FCM.getNotifications();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topAppBar(
        context,
        AppLocalizations.of(context)!.notification,
        actions: [
          IconButton(
            icon: const Icon(Icons.mark_email_read, color: Colors.blueGrey),
            onPressed: () async {
              await FCM.markAllNotificationsAsRead();
              refreshData();
            },
          ),
        ],
      ),
      body: FutureBuilder<List<NotificationMessage>?>(
        future: notifications,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(
                    snapshot.data![index].read ? Icons.mark_email_read : Icons.mark_email_unread,
                    color: snapshot.data![index].read ? Colors.green : Colors.red,
                  ),
                  title: Text(
                    snapshot.data![index].title,
                    style: TextStyle(
                      fontWeight: snapshot.data![index].read ? FontWeight.normal : FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    snapshot.data![index].message,
                    style: TextStyle(
                      fontWeight: snapshot.data![index].read ? FontWeight.normal : FontWeight.bold,
                    ),
                  ),
                  onTap: () async {
                    await FCM.markNotificationAsRead(snapshot.data![index].id);
                    refreshData();
                  },
                );
              },
            );
          }
          return const Center(
            child: SpinKitWave(color: Colors.blueGrey, size: 35.0),
          );
        },
      ),
    );
  }
}
