import 'package:lib_base/net/convert/data_response_converter.dart';
import 'package:lib_base/net/service/http_service.dart';

abstract class Api {
}

class ClientService extends HttpService implements Api {
  ClientService(dio) : super(dio, DataResponseConverter());

//  @override
//  Observable<BindData> bind(Map<String, String> params) {
//    return post(MenDianUrl.bindUrl, params)
//        .map((data) => BindData.fromJson(data));
//  }
//
//  @override
//  Observable<BindData> deviceReg(Map<String, String> params) {
//    converter = null;
//    return post(MenDianUrl.deviceRegUrl, params).map((data) {
//      converter = DataResponseConverter();
//       return BindData.fromJson(data);
//    });
//  }

}
