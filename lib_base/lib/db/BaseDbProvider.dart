import 'dart:async';
import 'dart:convert';
import 'package:lib_base/db/DBHelper.dart';
import 'package:meta/meta.dart';
import 'package:sqflite/sqflite.dart';

///数据库操作基类
abstract class BaseDbProvider {
  bool isTableExits = false;

  tableSqlString();

  tableName();

  Future<Database> getDataBase() async {
    return await open();
  }

  @mustCallSuper
  prepare(name, String createSql) async {
    isTableExits = await DBHelper().isTableExits(name);
    if (!isTableExits) {
      Database db = await DBHelper().getCurrentDatabase();
      return await db.execute(createSql);
    }
  }

  @mustCallSuper
  open() async {
    if (!isTableExits) {
      await prepare(tableName(), tableSqlString());
    }
    return await DBHelper().getCurrentDatabase();
  }
}
