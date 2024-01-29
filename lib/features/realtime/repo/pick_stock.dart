import 'package:sqflite/sqflite.dart';
import 'package:toc_machine_trading_fe/core/database/database.dart';

abstract class PickStockRepo {
  static Database database = DB.getDB;
  static const tableName = DB.tableNamePickStock;

  static Future<List<String>> getAllPickStock() async {
    final List<Map<String, dynamic>> maps = await database.query(
      tableName,
      orderBy: 'id ASC',
    );
    List<String> list = [];
    for (var i = 0; i < maps.length; i++) {
      list.add(maps[i]['stock_num'] as String);
    }
    return list;
  }

  static Future<void> insert(String stockNum) async {
    await database.insert(
      tableName,
      {
        'stock_num': stockNum,
      },
      conflictAlgorithm: ConflictAlgorithm.rollback,
    );
  }

  static Future<void> delete(String num) async {
    await database.delete(
      tableName,
      where: 'stock_num = ?',
      whereArgs: [num],
    );
  }
}
