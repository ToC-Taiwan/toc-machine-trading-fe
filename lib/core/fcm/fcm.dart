import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

abstract class FCM {
  static final FirebaseMessaging messaging = FirebaseMessaging.instance;
  static Database? db;

  static String _token = '';
  static bool _allowPush = false;
  static bool _abort = false;

  static Future<void> initialize() async {
    final storageFolder = Platform.isIOS ? await getLibraryDirectory() : await getApplicationSupportDirectory();
    db = await openDatabase(
      join(storageFolder.path, 'tmt_fcm.db'),
      onCreate: (db, version) async {
        await db.execute(
          '''
          CREATE TABLE IF NOT EXISTS "fcm"(
          key TEXT PRIMARY KEY,
          value TEXT)
          ''',
        );
      },
      version: 1,
    );

    if (Platform.isIOS) {
      String apnsToken = '';
      await messaging.getAPNSToken().then((value) {
        apnsToken = value!;
      });
      if (apnsToken.isEmpty) {
        _abort = true;
        return;
      }
    }

    await messaging.getToken().then((value) {
      setToken = value!;
    });

    if (getToken.isEmpty) {
      _abort = true;
      return;
    }

    await messaging.requestPermission(alert: true, badge: true, sound: true).then((value) {
      if (value.authorizationStatus == AuthorizationStatus.authorized) {
        turnOnDBAllowPush();
      } else {
        turnOffDBAllowPush();
      }
    });
    allowPush = await getDBAllowPush;
  }

  static void postInit(void Function(RemoteMessage)? onData) {
    if (_abort) {
      return;
    }

    FirebaseMessaging.instance.subscribeToTopic('announcement');
    if (onData != null) {
      FirebaseMessaging.onMessage.listen(onData);
    }
  }

  static set allowPush(bool value) {
    _allowPush = value;
    if (value) {
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

  static Future<void> turnOnDBAllowPush() async {
    await db!.insert('fcm', {'key': 'allow_push', 'value': 'true'}, conflictAlgorithm: ConflictAlgorithm.replace);
  }

  static Future<void> turnOffDBAllowPush() async {
    await db!.insert('fcm', {'key': 'allow_push', 'value': 'false'}, conflictAlgorithm: ConflictAlgorithm.replace);
  }

  static Future<bool> get getDBAllowPush async {
    final List<Map<String, dynamic>> maps = await db!.query('fcm', where: 'key = ?', whereArgs: ['allow_push']);
    if (maps.isEmpty) {
      return false;
    }
    return maps.first['value'] == 'true';
  }
}
