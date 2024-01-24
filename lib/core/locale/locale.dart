import 'dart:async';
import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

const String sqlCreateLanguage = '''
      CREATE TABLE IF NOT EXISTS "language"(
      key TEXT PRIMARY KEY,
      value TEXT)
      ''';

class LocaleBloc {
  static Database? db;
  static final StreamController<Locale> _localeController = StreamController<Locale>.broadcast();
  static Stream<Locale> get localeStream => _localeController.stream;

  static Locale? _currentLocale;
  static Locale get currentLocale {
    if (_currentLocale == null) {
      throw Exception('LocaleBloc not initialized');
    }
    return _currentLocale!;
  }

  static Future<void> initialize() async {
    final libDic = Platform.isAndroid ? await getApplicationSupportDirectory() : await getLibraryDirectory();
    db = await openDatabase(
      join(libDic.path, 'tmt_sqlite_lang.db'),
      onCreate: (db, version) async {
        await db.execute(sqlCreateLanguage);
      },
      version: 1,
    );

    final localeName = await getDBLocale();
    if (localeName.isEmpty) {
      _currentLocale = _systemLocale;
      await setDBLocale(_currentLocale.toString());
    } else {
      _currentLocale = _getLocale(localeName);
    }
  }

  static Future<void> setDBLocale(String localeName) async {
    await db!.insert('language', {'key': 'locale', 'value': localeName}, conflictAlgorithm: ConflictAlgorithm.replace);
  }

  static Future<String> getDBLocale() async {
    final List<Map<String, dynamic>> maps = await db!.query('language', where: 'key = ?', whereArgs: ['locale']);
    if (maps.isEmpty) {
      return '';
    }
    return maps.first['value'] as String;
  }

  static void changeLocale(String localeName) async {
    await setDBLocale(localeName);
    _localeController.sink.add(_getLocale(localeName));
  }

  static Locale _getLocale(String localeName) {
    switch (localeName) {
      case 'en':
        return const Locale.fromSubtags(languageCode: 'en');
      case 'ja':
        return const Locale.fromSubtags(languageCode: 'ja');
      case 'ko':
        return const Locale.fromSubtags(languageCode: 'ko');
      case 'zh_TW':
        return const Locale.fromSubtags(languageCode: 'zh', countryCode: 'TW');
      case 'zh_CN':
        return const Locale.fromSubtags(languageCode: 'zh', countryCode: 'CN');
    }
    return const Locale.fromSubtags(languageCode: 'en');
  }

  static Locale get _systemLocale {
    String localeSeparator = Platform.localeName.contains('_') ? '_' : '-';
    final split = Platform.localeName.split(localeSeparator);
    if (split.isEmpty) {
      return const Locale.fromSubtags(languageCode: 'en');
    }
    switch (split.first) {
      case 'en':
        return const Locale.fromSubtags(languageCode: 'en');
      case 'ja':
        return const Locale.fromSubtags(languageCode: 'ja');
      case 'ko':
        return const Locale.fromSubtags(languageCode: 'ko');
      case 'zh':
        return const Locale.fromSubtags(languageCode: 'zh', countryCode: 'TW');
    }
    return const Locale.fromSubtags(languageCode: 'en');
  }

  static void dispose() {
    _localeController.close();
  }
}
