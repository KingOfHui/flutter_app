part 'data_response.g.dart';
class DataResponse {
  String code;
  String msg;
  String success;
  String traceID;

  DataResponse({this.code, this.msg, this.success, this.traceID});

  bool isRequestSuccess() => code == "000" && success.toLowerCase() == "true";

  factory DataResponse.fromJson(Map<String, dynamic> json) =>
      _$DataResponseFromJson(json);

  Map<String, dynamic> toJson(instance) => _$DataResponseToJson(this);
}
