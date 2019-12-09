import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app/core/AppStoreApplication.dart';
import 'package:flutter_app/error_page.dart';
import 'package:flutter_app/main.dart';
import 'package:lib_base/lib_base.dart';

class Env {

  static Env value;

  String appName="flutter_dh";
  String baseUrl="";
  Color primarySwatch;
  EnvType environmentType = EnvType.DEVELOPMENT;

  // Database Config
  int dbVersion = 1;
  String dbName = "flutter.db";


  Env() {
    value = this;
    _init();
  }

  void _init() async{
//    if(EnvType.DEVELOPMENT == environmentType || EnvType.STAGING == environmentType){
//      Stetho.initialize();
//    }

    var application = AppStoreApplication();
    await application.onCreate();
    runZoned(() {
      ErrorWidget.builder = (FlutterErrorDetails details) {
        Zone.current.handleUncaughtError(details.exception, details.stack);
        return ErrorPage(
            details.exception.toString() + "\n " + details.stack.toString());
      };
      runApp(MyApp());
    }, onError: (Object object, StackTrace stack) {
      print(object);
      print(stack);
    });
  }
}

enum EnvType {
  DEVELOPMENT,
  STAGING,
  PRODUCTION,
  TESTING
}
