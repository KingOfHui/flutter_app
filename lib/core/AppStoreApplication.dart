import 'package:fluro/fluro.dart';
import 'package:flutter_app/core/AppStoreAPIRepository.dart';
import 'package:flutter_app/core/Env.dart';
import 'package:lib_base/db/DBHelper.dart';
import 'package:logging/logging.dart';
import 'package:lib_base/lib_base.dart';
import 'package:lib_data/src/lib_data.dart';

class AppStoreApplication implements Application {

  static AppStoreApplication _instance;
//  String _baseUrl = "http://192.168.4.35:8090/";
  String _baseUrl = "http://api.mendianbao.hualala.com/";
  RestClient _restClient;
  AppConfig appConfig;


  factory AppStoreApplication() => _getInstance();

  AppStoreApplication._internal();

  static AppStoreApplication _getInstance() {
    if (_instance == null) {
      _instance = AppStoreApplication._internal();
    }
    return _instance;
  }

  set baseUrl(String value) {
    _baseUrl = value;
  }
  Router router;
  DBHelper _dbHelper;
  DBAppStoreRepository dbAppStoreRepository;
  AppStoreAPIRepository appStoreAPIRepository;

  @override
  Future<void> onCreate() async {
    _initLog();
    _initRouter();
    await initDB();
    _initDBRepository();
    _initAPIRepository();
  }

  @override
  Future<void> onTerminate() async {
    await _dbHelper.close();
  }

  Future<void> initDB() async {
//    AppDatabaseMigrationListener migrationListener = AppDatabaseMigrationListener();
    DatabaseConfig databaseConfig = DatabaseConfig(Env.value.dbVersion, Env.value.dbName,);
    _dbHelper = DBHelper();
    _dbHelper.databaseConfig = databaseConfig;
    Log.info('DB name : ' + Env.value.dbName);
//    await _db.deleteDB();
    await _dbHelper.init();
  }

  void _initDBRepository(){
    dbAppStoreRepository = DBAppStoreRepository(_dbHelper.database);
  }

  void _initAPIRepository(){
    _restClient = RestClient(Config(_baseUrl));
    appStoreAPIRepository = AppStoreAPIRepository(_restClient, dbAppStoreRepository);
  }

  void _initLog(){
    Log.init();

//    switch(Env.value.environmentType){
//      case EnvType.TESTING:
//      case EnvType.DEVELOPMENT:
//      case EnvType.STAGING:{
//        Log.setLevel(Level.ALL);
//        break;
//      }
//      case EnvType.PRODUCTION:{
//        Log.setLevel(Level.INFO);
//        break;
//      }
//    }
  }

  void _initRouter(){
    router = new Router();
//    AppRoutes.configureRoutes(router);
  }
}

class AppConfig {

}
abstract class Application{
  void onCreate();
  void onTerminate();
}
