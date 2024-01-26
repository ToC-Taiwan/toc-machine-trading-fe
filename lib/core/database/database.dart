import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

abstract class DB {
  static const tableName = 'settings';

  static Database? db;

  static Future<void> initialize() async {
    final storageFolder = Platform.isIOS ? await getLibraryDirectory() : await getApplicationSupportDirectory();
    db = await openDatabase(
      join(
        storageFolder.path,
        'tmt.db',
      ),
      onCreate: (db, version) async {
        await db.execute(
          '''
          CREATE TABLE IF NOT EXISTS "$tableName"(
          key TEXT PRIMARY KEY,
          value TEXT)
          ''',
        );
      },
      version: 1,
    );
  }

  static Database get getDB {
    return db!;
  }
}
