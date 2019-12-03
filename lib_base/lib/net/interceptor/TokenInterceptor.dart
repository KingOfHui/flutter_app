import 'package:dio/dio.dart';

class TokenInterceptor extends InterceptorsWrapper {
  @override
  Future onRequest(RequestOptions options) async{
    int traceId = DateTime.now().microsecondsSinceEpoch;
    options.queryParameters["traceID"] = traceId;

//    var accessToken =await SPUtil.get(HttpService.TOKEN_KEY);
    options.queryParameters["accessToken"] = "";

    options.headers["produceCode"] = "111111";
    options.headers["produceVersion"] = "222222";
    return options;
  }

  @override
  Future onResponse(Response response) async{
//    var responseJson = response.data;
//    if(response.statusCode >=200 && response.statusCode<300 && responseJson["data"] != null) {
//      await SPUtil.save(HttpService.TOKEN_KEY, responseJson["data"]["accessToken"]);
//    }
    return response;
  }
}