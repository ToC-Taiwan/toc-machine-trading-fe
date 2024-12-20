import 'dart:io' show Platform;

abstract class AD {
  static final String _bannerAdUnitID =
      Platform.isIOS ? 'ca-app-pub-1617900048851450/8822922940' : 'ca-app-pub-1617900048851450/4933705826';
  static String get bannerAdUnitId => _bannerAdUnitID;
}
