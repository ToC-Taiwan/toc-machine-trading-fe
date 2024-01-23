import 'dart:async';
import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DB {
  static Database? db;

  static Future<void> initialize() async {
    final libDic = Platform.isAndroid ? await getApplicationSupportDirectory() : await getLibraryDirectory();
    db = await openDatabase(
      join(libDic.path, 'tmt_sqlite.db'),
      onCreate: (db, version) async {
        await db.execute(sqlCreateSettings);
      },
      version: 1,
    );
  }

  static Database get getDB {
    return db!;
  }
}

const String sqlCreateSettings = '''
      CREATE TABLE IF NOT EXISTS "settings"(
      key TEXT PRIMARY KEY,
      value TEXT)
      ''';
