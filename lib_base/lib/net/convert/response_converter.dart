import 'package:lib_base/net/base/response_error.dart';

abstract class ResponseConverter {
  Map<String, dynamic> convert(Map<String, dynamic> responseJson);

  ResponseError buildResponseError(String code, String message) =>
      ResponseError(code, message);
}
