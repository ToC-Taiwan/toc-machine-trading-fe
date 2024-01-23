import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:toc_machine_trading_fe/core/api/api.dart';

class FCM {
  static final FirebaseMessaging messaging = FirebaseMessaging.instance;

  static bool _authorizationStatus = false;
  static bool _firstLaunch = false;
  static bool _allowPush = false;

  static String _token = '';
  static String get getToken {
    return _token;
  }

  static initialize() async {
    if (!Platform.isIOS && !Platform.isAndroid) {
      return;
    }

    final localPath = Platform.isAndroid ? await getApplicationSupportDirectory() : await getLibraryDirectory();
    final filePath = File(join(localPath.path, 'fcm_token.json'));

    await messaging.getToken().then((value) {
      _token = value!;
    }).then((value) {
      if (!filePath.existsSync()) {
        filePath.createSync();
        filePath.writeAsStringSync(_token);
        _firstLaunch = true;
      }
    });

    await messaging
        .requestPermission(
      alert: true,
      badge: true,
      sound: true,
    )
        .then((value) {
      _authorizationStatus = value.authorizationStatus == AuthorizationStatus.authorized;
    });
  }

  static postInit(void Function(RemoteMessage)? onData) async {
    if (!_authorizationStatus) {
      return;
    }
    FirebaseMessaging.instance.subscribeToTopic('announcement');
    if (onData != null) {
      FirebaseMessaging.onMessage.listen(onData);
    }
    if (_firstLaunch) {
      _allowPush = true;
    } else {
      _allowPush = await API.checkTokenStatus(_token);
    }
    API.sendToken(_allowPush, _token);
  }

  static set allowPushToken(bool value) {
    _allowPush = value;
  }

  static get allowPush {
    return _allowPush;
  }
}
