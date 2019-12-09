import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app/core/AppStoreApplication.dart';
import 'package:flutter_app/core/Env.dart';
import 'package:flutter_app/error_page.dart';
import 'package:flutter_app/register/RegisterModel.dart';
import 'package:lib_base/utils/log.dart';
import 'package:lib_base/utils/utils.dart';
import 'package:lib_base/lib_base.dart';
import 'package:oktoast/oktoast.dart';
import 'package:lib_data/src/lib_data.dart';
import './const/Const.dart';
import 'package:provider/provider.dart';

void main()=>Env();

//void main() {
//  runZoned(()async{
//    ErrorWidget.builder = (FlutterErrorDetails details) {
//      Zone.current.handleUncaughtError(details.exception, details.stack);
//      return ErrorPage(
//          details.exception.toString() + "\n " + details.stack.toString());
//    };
//    var env = Env();
//    await AppStoreApplication().onCreate();
//    Log.init();
//    runApp(MyApp());
//  }, onError: (Object object, StackTrace stack) {
//    print(object);
//    print(stack);
//  });
//}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return OKToast(
        child: MultiProvider(
          providers: [
            ChangeNotifierProvider<RegisterModel>(
              builder: (context) => RegisterModel(),
            )
          ],
          child: MaterialApp(
            home: Scaffold(
              appBar: AppBar(
                title: Text("flutter"),
              ),
              body: Home(),
            ),
          ),
        ));
  }
}

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var registerModel = Provider.of<RegisterModel>(context);
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            registerModel.count.toString(),
            style: TextStyle(decoration: TextDecoration.none,
                fontSize: 24),
          ),
          RaisedButton(
            onPressed: () {
//              registerModel.add();
              Map<String, String> loginMap = {
                "empCode": "1",
                "empPWD": "1",
                "deviceKey": "AndroidDCB_1bd4a1c0df5b",
                "deviceName": "KIW-TL00H",
                'shopToken':"MDB_SHOP_SESSION28550e9bb3474ce29e1bd260f46a7beb"
              };
              Map<String, String> foodListMap = {
                "deviceKey": "AndroidDCB_1bd4a1c0df5b",
                "deviceName": "KIW-TL00H",
              };
              ServiceManager().restClient.clientService.getTableList(foodListMap).listen((data){
                data.records.forEach((d){
                  AppStoreApplication().dbAppStoreRepository.saveOrUpdateFeatureApp(d);


                });
                Log.info("dhdhdh"+data.toJson().toString());
              });
//              ServiceManager().restClient.clientService.login(loginMap).doOnData((data){
//                print("dhdhdh" + data.accessToken);
//              }).listen((_){
//                ServiceManager().restClient.clientService.getTableList(foodListMap).listen((data){
////                  AppStoreApplication().dbAppStoreRepository.saveOrUpdateDetailApp(data)
//                  Log.info("dhdhdh"+data.toJson().toString());
//                });
//              });
            },
            child: Text("+"),
          ),
          RaisedButton(
            onPressed: ()async{
              var loadAppDetail = await AppStoreApplication().dbAppStoreRepository.loadAppDetail(0);
              print(loadAppDetail);


//              ServiceManager().restClient.clientService.getFoodList(null).listen((data){
//                Log.info("dhdhdh"+data.toJson().toString());
//              });
            },
            child: Text("-"),
          ),
          RaisedButton(
            onPressed: ()async{
              var loadAppDetail = await AppStoreApplication().initDB();



//              ServiceManager().restClient.clientService.getFoodList(null).listen((data){
//                Log.info("dhdhdh"+data.toJson().toString());
//              });
            },
            child: Text("-"),
          )
        ],
      ),
    );
  }
}