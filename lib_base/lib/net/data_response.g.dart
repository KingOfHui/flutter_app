// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************


DataResponse _$DataResponseFromJson(Map<String, dynamic> json) {
  return DataResponse(
    code: json['code'] as String,
    msg: json['msg'] as String,
    success: json['success'] as String,
    traceID: json['traceID'] as String,
  );
}

Map<String, dynamic> _$DataResponseToJson(DataResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'msg': instance.msg,
      'success': instance.success,
      'traceID': instance.traceID,
    };
