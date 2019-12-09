import 'dart:convert';

import 'package:sqflite/sqflite.dart';
import 'package:lib_data/src/lib_data.dart';
import 'package:lib_base/lib_base.dart';

class DBAppStoreRepository {

  Database _database;

  DBAppStoreRepository(this._database);


  Future<void> saveOrUpdateFeatureApp(TableListDataRecord record) async{

    String meta = jsonEncode(record.toJson());
    int count = await _database.rawUpdate('UPDATE TableList SET areaID = ?, tableStatus = ? , itemID = ? , tableName = ? , currPerson = ?  WHERE tableName = ?', [record.areaID,record.tableStatus,record.itemID,record.tableName,record.currPerson,record.tableName]);
    if(0 == count){
      await _database.rawInsert('INSERT INTO TableList (areaID, tableStatus, itemID, tableName, currPerson) VALUES (?, ?, ?, ?, ?)',
          [record.areaID,record.tableStatus,record.itemID,record.tableName,record.currPerson]);
    }
  }

  Future<void> saveOrUpdateTopFreeApp(AppContent appContent) async{

    String meta = jsonEncode(appContent.toJson());
    int count = await _database.rawUpdate('UPDATE AppContent SET _order = ?, isFreeApp = ? , trackName = ? , description = ? , meta = ?  WHERE trackId = ?', [appContent.order, appContent.isFeatureApp, appContent.trackName, appContent.description,  meta, appContent.trackId]);
    if(0 == count){
      await _database.rawInsert('INSERT INTO AppContent (trackId, _order, isFreeApp, trackName, description, meta) VALUES (?, ?, ?, ?, ?, ?)',
          [appContent.trackId, appContent.order, appContent.isFreeApp, appContent.trackName, appContent.description,  meta]);
    }
  }

  Future<void> saveOrUpdateDetailApp(AppContent record) async{
    String meta = jsonEncode(record.toJson());
    await _database.rawUpdate('UPDATE AppContent SET meta = ?  WHERE trackId = ?', [meta, record.trackId]);
  }

  Future<void> deleteAllAppContent() async{
    await _database.rawDelete('DELETE FROM AppContent');
  }




  Future<List<AppContent>> loadFeaturesApp(String searchKey) async{
    String searchSql = '';
    if(searchKey.isNotEmpty){
      searchSql = "AND (`trackName` LIKE '%$searchKey%' OR `description` LIKE '%$searchKey%')";
    }

    List<Map> list = await _database.rawQuery("SELECT  _order, meta FROM AppContent WHERE `isFeatureApp` = 1 $searchSql ORDER BY `_order` ASC");
    List<AppContent> applist = [];
    for(var map in list){
      AppContent appContent = AppContent.fromJson(jsonDecode(map['meta']));
      appContent.order = map['_order'];
      applist.add(appContent);
    }
    return applist;
  }

  Future<List<AppContent>> loadTopFreeApp(String searchKey) async{

    String searchSql = '';
    if(searchKey.isNotEmpty){
      searchSql = "AND (trackName LIKE '%$searchKey%' OR description LIKE '%$searchKey%')";
    }

    List<Map> list = await _database.rawQuery("SELECT  _order, meta FROM AppContent WHERE `isFreeApp` = 1 $searchSql ORDER BY `_order` ASC");
    List<AppContent> applist = [];

    for(var map in list){
      AppContent appContent = AppContent.fromJson(jsonDecode(map['meta']));
      appContent.order = map['_order'];
      applist.add(appContent);
    }
    return applist;
  }

  Future loadAppDetail(num trackId) async{
//    List<Map> list = await _database.rawQuery("SELECT meta from AppContent WHERE trackId = $trackId LIMIT 1");
//    if(list.length > 0){
//      return AppContent.fromJson(jsonDecode(list[0]['meta']));
//    }

    return await _database.query("TableList");

  }
}