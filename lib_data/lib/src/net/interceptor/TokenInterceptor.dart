import 'package:dio/dio.dart';
import 'package:lib_base/lib_base.dart';
import 'package:lib_data/src/common/Config.dart';

class TokenInterceptor extends InterceptorsWrapper {
  String _token;

  @override
  Future onRequest(RequestOptions options) async {
    int traceId = DateTime.now().microsecondsSinceEpoch;
    options.queryParameters["traceID"] = traceId;
    if (_token == null) {
      var token = await getToken();
      if (token != null) {
        _token = token;
      }
    }
    print("dhdhdh--token-->"+_token.toString());

//    var accessToken =await SPUtil.get(HttpService.TOKEN_KEY);
    options.queryParameters["accessToken"] = _token;
    options.queryParameters["accessToken"] = "MDB_EMPLOYEE_SESSION85361631a57f4080ac4d68c8327155a0";

    options.headers["produceCode"] = "111111";
    options.headers["produceVersion"] = "222222";
    return options;
  }

  @override
  Future onResponse(Response response) async {
    try {
      var responseJson = response.data;
      if (response.statusCode >= 200 &&
          response.statusCode < 300 &&
          responseJson["data"] != null &&
          responseJson["data"]["accessToken"] != null) {
        await SPUtil.save(
            Config.TOKEN_KEY, responseJson["data"]["accessToken"]);
      }
    } catch (e) {
      print(e);
    }
    return response;
  }

  ///清除授权
  clearAuthorization() {
    this._token = null;
    SPUtil.remove(Config.TOKEN_KEY);
  }

  ///获取授权token
  getToken() async {
    String token = await SPUtil.get(Config.TOKEN_KEY);
    if (token == null) {
      String basic = await SPUtil.get(Config.USER_BASIC_CODE);
      if (basic == null) {
        //提示输入账号密码
      } else {
        //通过 basic 去获取token，获取到设置，返回token
        return "Basic $basic";
      }
    } else {
      this._token = token;
      return token;
    }
  }
}
