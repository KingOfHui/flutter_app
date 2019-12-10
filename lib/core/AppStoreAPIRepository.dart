import 'package:lib_data/src/db/DBAppStoreRepository.dart';
import 'package:lib_data/src/net/service/rest_client.dart';


class AppStoreAPIRepository {
  RestClient _restClient;
  DBAppStoreRepository _dbAppStoreRepository;
  AppStoreAPIRepository(this._restClient, this._dbAppStoreRepository);
//  void get() {
//    _restClient.clientService.getFoodList(null).
//  }
}