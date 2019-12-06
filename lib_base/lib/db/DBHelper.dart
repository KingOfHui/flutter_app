import 'package:lib_base/utils/Log.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  static DBHelper _helper;
  static Database _database;
  DatabaseConfig _databaseConfig;

  Database get database => _database;


  set databaseConfig(DatabaseConfig value) {
    _databaseConfig = value;
  }

  factory DBHelper() => _getInstance();

  DBHelper._internal();

  static DBHelper _getInstance() {
    if (_helper == null) {
      _helper = DBHelper._internal();
    }
    return _helper;
  }

  Future<void> init() async {
    if (null == _databaseConfig) {
      throw NullThrownError;
    }
    var path = await _getDBPath();

    _database = await openDatabase(path,
        version: _databaseConfig.version,
        onCreate: null != _databaseConfig.databaseMigrationListener
            ? _databaseConfig.databaseMigrationListener.onCreate
            : (Database db, int version) async {
                Log.info('onCreate version : $version');
                //数据库创建完成
                //await db.execute("CREATE TABLE Test (id INTEGER PRIMARY KEY, name TEXT, value INTEGER, num REAL)");
              },
        onUpgrade: null != _databaseConfig.databaseMigrationListener
            ? _databaseConfig.databaseMigrationListener.onUpgrade
            : (Database db, int oldVersion, int newVersion) {
                Log.info('oldVersion : $oldVersion');
                Log.info('newVersion : $newVersion');
              });
  }

  ///获取当前数据库对象
  Future<Database> getCurrentDatabase() async {
    if (_database == null) {
      await init();
    }
    return _database;
  }

  /// 表是否存在
  isTableExits(String tableName) async {
    await getCurrentDatabase();
    var res = await _database.rawQuery(
        "select * from Sqlite_master where type = 'table' and name = '$tableName'");
    return res != null && res.length > 0;
  }

  Future<void> deleteDB() async {
    var path = await _getDBPath();
    await deleteDatabase(path);
  }

  Future<void> close() async {
    if (null != _database) {
      await _database.close();
      _database = null;
    }
  }

  Future<String> _getDBPath() async {
    var databasesPath = await getDatabasesPath();
    return join(databasesPath, _databaseConfig.dbName);
  }
}

///数据库配置版本、库名、监听
class DatabaseConfig {
  int version;
  String dbName;
  DatabaseMigrationListener databaseMigrationListener;

  DatabaseConfig(this.version, this.dbName, {this.databaseMigrationListener});
}

///数据库创建和升级监听
abstract class DatabaseMigrationListener {
  void onCreate(Database db, int version);

  void onUpgrade(Database db, int oldVersion, int newVersion);
}
