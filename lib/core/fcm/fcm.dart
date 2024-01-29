import 'dart:async';
import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class NotificationMessage {
  int id;
  bool read;
  final String title;
  final String message;
  final DateTime created;

  NotificationMessage({
    required this.id,
    required this.title,
    required this.message,
    required this.read,
    required this.created,
  });
}

abstract class FCM {
  static final FirebaseMessaging _messaging = FirebaseMessaging.instance;
  static final StreamController<bool> _counterController = StreamController<bool>.broadcast();

  static Database? _db;
  static Stream<bool> get notificationCountStream => _counterController.stream;
  static String _token = '';
  static bool _allowPush = false;
  static bool _abort = false;
  static bool _backgroundRegistered = false;

  static Future<void> initializeDB() async {
    if (_db != null) {
      return;
    }

    final storageFolder = Platform.isIOS ? await getLibraryDirectory() : await getApplicationSupportDirectory();
    _db = await openDatabase(
      join(
        storageFolder.path,
        'tmt_fcm.db',
      ),
      onCreate: (db, version) async {
        await db.execute(
          '''
          CREATE TABLE IF NOT EXISTS "fcm"(
          key TEXT PRIMARY KEY,
          value TEXT)
          ''',
        );
        await db.execute(
          '''
          CREATE TABLE IF NOT EXISTS "notification"(
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          title TEXT,
          message TEXT,
          read INTEGER,
          created INTEGER)
          ''',
        );
      },
      version: 1,
    );
    allowPush = await getDBAllowPush;
  }

  static Future<void> initialize() async {
    if (Platform.isIOS) {
      String apnsToken = await _messaging.getAPNSToken() ?? '';
      if (apnsToken.isEmpty) {
        _abort = true;
        return;
      }
    }

    setToken = await _messaging.getToken() ?? '';
    if (getToken.isEmpty) {
      _abort = true;
      return;
    }

    await _messaging.requestPermission(alert: true, badge: true, sound: true).then((value) {
      if (value.authorizationStatus == AuthorizationStatus.authorized) {
        turnOnDBAllowPush();
      } else {
        turnOffDBAllowPush();
      }
    });
    allowPush = await getDBAllowPush;
  }

  static Future<void> postInit(void Function(RemoteMessage)? onData) async {
    if (_abort) {
      return;
    }
    registerBackgroundCallback();
    FirebaseMessaging.instance.subscribeToTopic('announcement');
    if (onData != null) {
      FirebaseMessaging.onMessage.listen(onData);
    }
  }

  static void registerBackgroundCallback() {
    if (_backgroundRegistered || !allowPush) {
      return;
    }
    _backgroundRegistered = true;
    FirebaseMessaging.onMessage.listen(insertNotification);
  }

  static set allowPush(bool value) {
    _allowPush = value;
    if (value) {
      triggerUpdate();
      turnOnDBAllowPush();
    } else {
      turnOffDBAllowPush();
    }
  }

  static bool get allowPush {
    return _allowPush;
  }

  static set setToken(String value) {
    _token = value;
  }

  static String get getToken {
    return _token;
  }

  static Future<bool> get getDBAllowPush async {
    final List<Map<String, dynamic>> maps = await _db!.query(
      'fcm',
      where: 'key = ?',
      whereArgs: ['allow_push'],
    );
    if (maps.isEmpty) {
      return false;
    }
    return maps.first['value'] == 'true';
  }

  static Future<void> turnOnDBAllowPush() async {
    await _db!.insert(
        'fcm',
        {
          'key': 'allow_push',
          'value': 'true',
        },
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  static Future<void> turnOffDBAllowPush() async {
    await _db!.insert(
        'fcm',
        {
          'key': 'allow_push',
          'value': 'false',
        },
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  static Future<List<NotificationMessage>?> getNotifications() async {
    return await _db!
        .query(
      'notification',
      orderBy: 'id DESC',
    )
        .then(
      (value) {
        List<NotificationMessage> notifications = [];
        for (var element in value) {
          notifications.add(
            NotificationMessage(
              id: element['id'] as int,
              title: element['title'] as String,
              message: element['message'] as String,
              read: element['read'] == 1,
              created: DateTime.fromMillisecondsSinceEpoch(element['created'] as int),
            ),
          );
        }
        if (notifications.isEmpty) {
          return null;
        }
        return notifications;
      },
    );
  }

  static Future<void> insertNotification(RemoteMessage msg) async {
    await _db!.insert(
      'notification',
      {
        'title': msg.notification!.title,
        'message': msg.notification!.body,
        'read': 0,
        'created': DateTime.now().millisecondsSinceEpoch,
      },
    );
    _counterController.sink.add(true);
  }

  static Future<void> markAllNotificationsAsRead() async {
    await _db!.update(
      'notification',
      {
        'read': 1,
      },
    );
    triggerUpdate();
  }

  static Future<void> markNotificationAsRead(int id) async {
    await _db!.update(
      'notification',
      {
        'read': 1,
      },
      where: 'id = ?',
      whereArgs: [id],
    );
    triggerUpdate();
  }

  static Future<void> deleteNotification(int id) async {
    await _db!.delete(
      'notification',
      where: 'id = ?',
      whereArgs: [id],
    );
    triggerUpdate();
  }

  static Future<bool> anyNotificationsUnread() async {
    final List<Map<String, dynamic>> maps = await _db!.query(
      'notification',
      where: 'read = ?',
      whereArgs: [0],
    );
    return maps.isNotEmpty;
  }

  static Future<void> triggerUpdate() async {
    _counterController.sink.add(await anyNotificationsUnread());
  }
}
