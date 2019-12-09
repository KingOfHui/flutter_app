import 'package:lib_data/src/data/response/base_params/food_list_entity.dart';
import 'package:lib_data/src/data/response/base_params/user_entity.dart';
import 'package:lib_data/src/data/response/bind/bind_data.dart';
import 'package:rxdart/rxdart.dart';
import 'package:lib_data/src/lib_data.dart';

import '../convert/data_response_converter.dart';
import 'http_service.dart';

abstract class Api {
}

class ClientService extends HttpService implements Api {
  ClientService(dio,{ResponseConverter convert}) : super(dio, convert);

//  @override
//  Observable<BindData> bind(Map<String, String> params) {
//    return post("", params)
//        .map((data) => BindData.fromJson(data));
//  }

  @override
  Observable<BindData> shopParams(Map<String, String> params) {
    return post("saas/base/getShopParams", params)
        .map((data) => BindData.fromJson(data));
  }

  @override
  Observable<UserData> login(Map<String, String> params) {
    return post("saas/emp/Login", params)
        .map((data) => UserData.fromJson(data));
  }

  @override
  Observable<FoodListData> getFoodList(Map<String, String> params) {
    return post("saas/base/getFoodLst", params)
        .map((data) => FoodListData.fromJson(data));
  }

  @override
  Observable<BindData> bindShop(Map<String, String> params) {
    return post("shop/device/bind", params).map((data) {
       return BindData.fromJson(data);
    });
  }
  @override
  Observable<TableListData> getTableList(Map<String, String> params) {
    return post("saas/order/getTableStatusLst", params).map((data) {
       return TableListData.fromJson(data);
    });
  }

}
