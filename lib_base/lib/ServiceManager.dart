import 'package:lib_base/net/service/rest_client.dart';
class ServiceManager{

  String baseUrl = "http://";
  RestClient _restClient;

  get restClient => _restClient?? RestClient(Config(baseUrl));

  factory ServiceManager() => _getInstance();

  ServiceManager._internal(){
    _restClient = RestClient(Config(baseUrl));
  }

  static ServiceManager _instance;

  static ServiceManager _getInstance() {
    if (_instance == null) {
      _instance = ServiceManager._internal();
    }
    return _instance;
  }
}