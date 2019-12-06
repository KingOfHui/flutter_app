import 'package:dio/dio.dart';

import '../interceptor/TokenInterceptor.dart';
import 'client_service.dart';

class RestClient {
  final Config _config;

  ClientService clientService;
  final tokenInterceptor = TokenInterceptor();

  RestClient(this._config) {
    Dio dio = Dio()
      ..options.baseUrl = _config.baseUrl
      ..options.connectTimeout = _config.connectTimeOut
      ..options.sendTimeout = _config.sendTimeout
      ..options.receiveTimeout = _config.receiveTimeout
      ..options.contentType = Headers.formUrlEncodedContentType
      // 表示期望以那种格式(方式)接受响应数据。接受4种类型 `json`, `stream`, `plain`, `bytes`. 默认值是 `json`,
      ..options.responseType = ResponseType.json
      ..options.queryParameters = {}
      ..interceptors.add(tokenInterceptor)
      ..interceptors.add(LogInterceptor(requestBody: true, responseBody: true));

    clientService = ClientService(dio);
  }

  void switchBaseUrl(String url) {
    clientService.switchBaseUrl(url);
  }

  void addHeaderInfoToDio(Map<String, dynamic> headers) {
    clientService.addHeaderInfoToDio(headers);
  }

  void configQueryInfoToDio(Map<String, dynamic> query) {
    clientService.configQueryInfoToDio(query);
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
