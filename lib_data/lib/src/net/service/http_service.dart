import 'package:dio/dio.dart';
import 'package:rxdart/rxdart.dart';

import '../convert/response_converter.dart';


abstract class HttpService {
  final Dio _dio;
  ResponseConverter converter;

  HttpService(this._dio, [this.converter]);

  void switchBaseUrl(String url) {
      _dio.options.baseUrl = url;
  }

  void addHeaderInfoToDio(Map<String, dynamic> headers) {
    BaseOptions options = _dio.options;
    options.headers.addAll(headers);
  }

  void configQueryInfoToDio(Map<String,dynamic> query) {
    BaseOptions options = _dio.options;
    Map<String, dynamic> queryMap = Map();
    queryMap.addAll(query);
    options.queryParameters.addAll(queryMap);
  }

  Map<String, dynamic> _mapData(Map<String, dynamic> responseJson) {
    if (converter == null) {
      return responseJson;
    } else {
      return converter.convert(responseJson);
    }
  }

  Future _get(String url, {Map<String, dynamic> params}) async {
    var response = await _dio.get(url, queryParameters: params);
    return _mapData(response.data);
  }

  Future _post(String url, Map<String, dynamic> params) async {
//    Map<String, dynamic> queryMap = Map();
//    int traceId = DateTime.now().microsecondsSinceEpoch;
//    queryMap["traceID"] = traceId;
//    configQueryInfoToDio(queryMap);

    var response = await _dio.post(url, data: params);
    return _mapData(response.data);
  }

  Observable get(String url, {Map<String, dynamic> params}) =>
      Observable.fromFuture(_get(url, params: params)).asBroadcastStream();

  Observable post(String url, Map<String, dynamic> params) =>
      Observable.fromFuture(_post(url, params)).asBroadcastStream();
}
