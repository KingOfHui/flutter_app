import 'package:dio/dio.dart';
import 'package:lib_base/net/interceptor/TokenInterceptor.dart';

import 'client_service.dart';

class RestClient {
  final Config _config;

  ClientService get clientService => _clientService;
  ClientService _clientService;

  RestClient(this._config) {
    Dio dio = Dio()
      ..options.baseUrl = _config.baseUrl
      ..options.connectTimeout = _config.connectTimeOut
      ..options.sendTimeout = _config.sendTimeout
      ..options.receiveTimeout = _config.receiveTimeout
      ..options.contentType =  Headers.formUrlEncodedContentType
      // 表示期望以那种格式(方式)接受响应数据。接受4种类型 `json`, `stream`, `plain`, `bytes`. 默认值是 `json`,
      ..options.responseType = ResponseType.json
      ..options.queryParameters = {}
      ..interceptors.add(TokenInterceptor())
      ..interceptors.add(LogInterceptor(requestBody: true, responseBody: true));

    _clientService = ClientService(dio);
  }

  void switchBaseUrl(String url) {
    _clientService.switchBaseUrl(url);
  }

  void addHeaderInfoToDio(Map<String, dynamic> headers) {
    _clientService.addHeaderInfoToDio(headers);
  }

  void configQueryInfoToDio(Map<String,dynamic> query) {
    _clientService.configQueryInfoToDio(query);
  }

}

class Config {
  final String baseUrl;
  int connectTimeOut;
  int sendTimeout;
  int receiveTimeout;

  Config(this.baseUrl,
      {this.connectTimeOut = 20000,
      this.sendTimeout = 20000,
      this.receiveTimeout = 20000})
      : assert(baseUrl != null && baseUrl.isNotEmpty);
}
