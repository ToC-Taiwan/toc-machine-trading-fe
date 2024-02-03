import 'package:sqflite/sqflite.dart';
import 'package:toc_machine_trading_fe/core/database/database.dart';

abstract class SettingsRepo {
  static Database database = DB.getDB;
  static const tableName = DB.tableNameSettings;

  static Future<void> _insert(String key, String value) async {
    await database.insert(
      tableName,
      {
        'key': key,
        'value': value,
      },
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  static Future<String?> _get(String key) async {
    final List<Map<String, dynamic>> maps = await database.query(
      tableName,
      where: 'key = ?',
      whereArgs: [key],
    );
    if (maps.isEmpty) {
      return null;
    }
    return maps.first['value'] as String;
  }

  static Future<void> removeAds() async {
    await _insert('removeAds', 'true');
  }

  static Future<bool> isAdsRemoved() async {
    final String? value = await _get('removeAds');
    return value == 'true';
  }
}
