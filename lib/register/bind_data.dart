part 'bind_data.g.dart';

class BindData {
  String shopToken;
  String deviceToken;
  String shopName;

  BindData({this.shopToken, this.deviceToken, this.shopName});

  factory BindData.fromJson(Map<String, dynamic> json) =>
      _$BindDataFromJson(json);

  Map<String, dynamic> toJson(instance) => _$BindDataToJson(this);
}
