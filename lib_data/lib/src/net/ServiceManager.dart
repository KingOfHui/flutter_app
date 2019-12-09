import 'service/rest_client.dart';

class ServiceManager{

  static ServiceManager _instance;
//  String _baseUrl = "http://192.168.4.35:8090/";
  RestClient _restClient;
  String _baseUrl = "http://api.mendianbao.hualala.com/";


  factory ServiceManager() => _getInstance();

  ServiceManager._internal(){
    _restClient = RestClient(Config(_baseUrl));
  }


  static ServiceManager _getInstance() {
    if (_instance == null) {
      _instance = ServiceManager._internal();
    }
    return _instance;
  }

  set baseUrl(String value) {
    _baseUrl = value;
  }

  RestClient get restClient => _restClient?? RestClient(Config(_baseUrl));

}