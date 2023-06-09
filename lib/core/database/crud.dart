// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names
import 'package:get/get.dart';

import 'databaseConnection.dart';

class CRUD {
  final DatabaseConnection _databaseConn = Get.put(DatabaseConnection());
  Future<int> insertData(String tableName, Map<String, dynamic> data) async {
    final db = await _databaseConn.initDatabase();
    return await db.insert(tableName, data);
  }

  Future<List<Map<String, dynamic>>> getData(String tableName) async {
    final db = await _databaseConn.initDatabase();
    return await db.query(tableName);
  }

  Future<int> updateData(String tableName, Map<String, dynamic> data) async {
    final db = await _databaseConn.initDatabase();
    return await db.update(
      tableName,
      data,
      where: 'id = ?',
      whereArgs: [data['id']],
    );
  }

  Future<int> deleteData(String tableName, int id) async {
    final db = await _databaseConn.initDatabase();
    return await db.delete(
      tableName,
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}
