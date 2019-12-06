
//part 'package:lib_data/src/data/response/bind/bind_data.g.dart';

class BindData {
  String FoodMakeWarningTimeout;

  static fromJson(data) {
    return BindData(
      FoodMakeWarningTimeout: data['FoodMakeWarningTimeout'].toString(),
    );
  }
//
//  String shopToken;
//  String deviceToken;
//  String shopName;
//
  BindData({this.FoodMakeWarningTimeout});
//
//  factory BindData.fromJson(Map<String, dynamic> json) =>
//      _$BindDataFromJson(json);
//
//  Map<String, dynamic> toJson(instance) => _$BindDataToJson(this);
}
