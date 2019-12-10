part 'package:lib_data/src/data/response/bind/bind_data.g.dart';

class BindData {

  String shopToken;
  String deviceToken;
  String shopName;

  BindData({this.shopToken, this.deviceToken, this.shopName});


  factory BindData.fromJson(Map<String, dynamic> json) =>
      _$BindDataFromJson(json);

  Map<String, dynamic> toJson() => _$BindDataToJson(this);
}
