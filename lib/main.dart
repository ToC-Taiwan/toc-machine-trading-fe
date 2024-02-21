import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:toc_machine_trading_fe/core/api/api.dart';
import 'package:toc_machine_trading_fe/core/database/database.dart';
import 'package:toc_machine_trading_fe/core/fcm/fcm.dart';
import 'package:toc_machine_trading_fe/core/locale/locale.dart';
import 'package:toc_machine_trading_fe/features/login/pages/login.dart';
import 'package:toc_machine_trading_fe/features/universal/pages/homepage.dart';
import 'package:toc_machine_trading_fe/firebase_options.dart';

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await FCM.initializeDB();
  await FCM.insertNotification(message);
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DB.initialize();
  await FCM.initializeDB();
  await LocaleBloc.initialize();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  await MobileAds.instance.initialize();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FCM.registerBackgroundCallback();
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  bool alreadyLogin = true;
  bool hasNotification = false;

  await API.refreshToken().then((value) async {
    await FCM.initialize();
    hasNotification = await FCM.anyNotificationsUnread();
  }).catchError((_) {
    alreadyLogin = false;
  });

  runApp(
    MainApp(
      alreadyLogin: alreadyLogin,
      hasUnreadNotification: hasNotification,
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({
    this.alreadyLogin = false,
    this.hasUnreadNotification = false,
    super.key,
  });

  final bool alreadyLogin;
  final bool hasUnreadNotification;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: LocaleBloc.localeStream,
      initialData: LocaleBloc.currentLocale,
      builder: (context, snapshot) {
        return MaterialApp(
          theme: ThemeData(
            useMaterial3: true,
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.blueGrey,
            ),
          ),
          debugShowCheckedModeBanner: false,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          locale: snapshot.data,
          routes: {
            LoginPage.routeName: (context) => LoginPage(screenHeight: MediaQuery.of(context).size.height),
            HomePage.routeName: (context) => HomePage(notificationIsUnread: hasUnreadNotification),
          },
          initialRoute: alreadyLogin ? HomePage.routeName : LoginPage.routeName,
        );
      },
    );
  }
}
