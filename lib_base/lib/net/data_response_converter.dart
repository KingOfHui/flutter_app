
import 'package:lib_base/net/data_response.dart';
import 'package:lib_base/net/response_converter.dart';

class DataResponseConverter extends ResponseConverter {
  final String dataKey = "data";

  @override
  Map<String, dynamic> convert(Map<String, dynamic> responseJson) {
    var response = DataResponse.fromJson(responseJson);
    if (response.isRequestSuccess()) {
      return responseJson[dataKey];
    } else {
      throw buildResponseError(response.msg, response.code);
    }
  }
}
