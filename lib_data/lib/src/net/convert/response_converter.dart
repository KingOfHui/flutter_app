import 'package:lib_data/src/net/base/response_error.dart';

abstract class ResponseConverter {
  Map<String, dynamic> convert(Map<String, dynamic> responseJson);

  ResponseError buildResponseError(String code, String message) =>
      ResponseError(code, message);
}
