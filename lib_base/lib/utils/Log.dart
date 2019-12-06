import 'package:logging/logging.dart';

class Log{
  static const String _NAME = 'Logger';
  static Logger _instance;

  static void init(){
    Logger.root.onRecord.listen((record) {
      print('${record.level.name}: ${record.time}: ${record.message}');
    });
    _instance = Logger(_NAME);
  }

  static void setLevel(Level level){
    Logger.root.level = level;
  }

  static void infoLongLog(message, [Object error, StackTrace stackTrace]){
    int max_str_length = 990 - _NAME.length;
    //大于4000时
    while (message.length > max_str_length) {
      _instance.info(message.substring(0, max_str_length));
      message = message.substring(max_str_length);
    }
    //剩余部分
    _instance.info(message, error, stackTrace);
  }

  static void info(message, [Object error, StackTrace stackTrace]){
    _instance.info(message, error, stackTrace);
  }

  static void warning(message, [Object error, StackTrace stackTrace]){
    _instance.warning(message, error, stackTrace);
  }

  static void config(message, [Object error, StackTrace stackTrace]){
    _instance.config(message, error, stackTrace);
  }

  static void fine(message, [Object error, StackTrace stackTrace]){
    _instance.fine(message, error, stackTrace);
  }

  static void finer(message, [Object error, StackTrace stackTrace]){
    _instance.finer(message, error, stackTrace);
  }

  static void finest(message, [Object error, StackTrace stackTrace]){
    _instance.finest(message, error, stackTrace);
  }

  static void severe(message, [Object error, StackTrace stackTrace]){
    _instance.severe(message, error, stackTrace);
  }

  static void shout(message, [Object error, StackTrace stackTrace]){
    _instance.shout(message, error, stackTrace);
  }
}