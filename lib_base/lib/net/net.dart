import 'package:dio/dio.dart';
import 'package:lib_base/net/response_converter.dart';
import 'package:lib_base/utils/local_storage.dart';
class HttpService {

  ResponseConverter converter;

  static const TOKEN_KEY = "token";
  static BaseOptions _options = getDefOptions();
  Dio _dio = new Dio(_options);

  HttpService([this._dio,this.converter]){
    _dio.interceptors.add(new HeaderInterceptors());
    _dio.interceptors.add(new TokenInterceptors());
    _dio.interceptors.add(LogInterceptor(responseBody: true)); //开启请求日志
  }

  Future  post(String url, Map<String, dynamic> params) async {

    var response = await _dio.post(url, data: params);
    return _mapData(response.data);
  }

  Map<String, dynamic> _mapData(Map<String, dynamic> responseJson) {
    if (converter == null) {
      return responseJson;
    } else {
      return converter.convert(responseJson);
    }
  }

  /// get Def Options.
  static BaseOptions getDefOptions() {
    BaseOptions options = new BaseOptions();
    options.baseUrl = "http://192.168.4.82:8090/";
    options.contentType =  Headers.formUrlEncodedContentType;
    options.connectTimeout = 1000 * 30;
    options.receiveTimeout = 1000 * 30;
    return options;
  }
}
HttpService service = new HttpService();


class TokenInterceptors extends InterceptorsWrapper {
  @override
  Future onRequest(RequestOptions options) async{
    int traceId = DateTime.now().microsecondsSinceEpoch;
    options.queryParameters["traceID"] = traceId;

    var accessToken =await SPUtil.get(HttpService.TOKEN_KEY);
    options.queryParameters["accessToken"] = accessToken;

    options.headers["produceCode"] = "111111";
    options.headers["produceVersion"] = "222222";
    return options;
  }

  @override
  Future onResponse(Response response) async{
    var responseJson = response.data;
    if(response.statusCode >=200 && response.statusCode<300 && responseJson["data"] != null) {
      await SPUtil.save(HttpService.TOKEN_KEY, responseJson["data"]["accessToken"]);
    }
    return response;
  }
}

class HeaderInterceptors extends InterceptorsWrapper {
  @override
  Future onRequest(RequestOptions options) async{
    options.connectTimeout = 5000;
    return options;
  }
}