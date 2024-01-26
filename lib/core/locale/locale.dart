import 'dart:async';
import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

abstract class LocaleBloc {
  static final StreamController<Locale> _localeController = StreamController<Locale>.broadcast();
  static Stream<Locale> get localeStream => _localeController.stream;

  static Database? db;
  static Locale? _currentLocale;

  static Future<void> initialize() async {
    final storageFolder = Platform.isIOS ? await getLibraryDirectory() : await getApplicationSupportDirectory();
    db = await openDatabase(
      join(
        storageFolder.path,
        'tmt_lang.db',
      ),
      onCreate: (db, version) async {
        await db.execute(
          '''
          CREATE TABLE IF NOT EXISTS "language"(
          key TEXT PRIMARY KEY,
          value TEXT)
          ''',
        );
      },
      version: 1,
    );

    final localeName = await _getDBLocale();
    if (localeName.isEmpty) {
      _currentLocale = _systemLocale;
      await _setDBLocale(_currentLocale.toString());
    } else {
      _currentLocale = _stringToLocale(localeName);
    }
  }

  static Future<void> _setDBLocale(String localeName) async {
    await db!.insert('language', {'key': 'locale', 'value': localeName}, conflictAlgorithm: ConflictAlgorithm.replace);
  }

  static Future<String> _getDBLocale() async {
    final List<Map<String, dynamic>> maps = await db!.query('language', where: 'key = ?', whereArgs: ['locale']);
    if (maps.isEmpty) {
      return '';
    }
    return maps.first['value'] as String;
  }

  static Future<void> changeLocale(String localeName) async {
    await _setDBLocale(localeName);
    _currentLocale = _stringToLocale(localeName);
    _localeController.sink.add(_stringToLocale(localeName));
  }

  static Locale get currentLocale {
    if (_currentLocale == null) {
      throw Exception('LocaleBloc not initialized');
    }
    return _currentLocale!;
  }

  static Locale _stringToLocale(String localeName) {
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
