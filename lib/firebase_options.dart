// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart' show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCRUyODrflkSOP7VGmd_GsdRdZCdrSY-Ys',
    appId: '1:517489539432:web:16bb647d6dba614786bedd',
    messagingSenderId: '517489539432',
    projectId: 'trade-agent-87e47',
    authDomain: 'trade-agent-87e47.firebaseapp.com',
    databaseURL: 'https://trade-agent-87e47-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'trade-agent-87e47.appspot.com',
    measurementId: 'G-TK9F8C5NKC',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB1ouiRaBNYa5jH2ghHgrTft6XWc28Ama8',
    appId: '1:517489539432:android:ac887292510c7d9986bedd',
    messagingSenderId: '517489539432',
    projectId: 'trade-agent-87e47',
    databaseURL: 'https://trade-agent-87e47-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'trade-agent-87e47.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDApy0FXg8es0yBcyotw3LYy_JaHVARJSM',
    appId: '1:517489539432:ios:c7c9889764202e4a86bedd',
    messagingSenderId: '517489539432',
    projectId: 'trade-agent-87e47',
    databaseURL: 'https://trade-agent-87e47-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'trade-agent-87e47.appspot.com',
    androidClientId: '517489539432-4561vhsm0nctsc44v0hnaa9uvsogteja.apps.googleusercontent.com',
    iosClientId: '517489539432-edegvea4146m0ct5ct79h77kru4k9gir.apps.googleusercontent.com',
    iosBundleId: 'com.tocandraw.tradeAgent',
  );

}
