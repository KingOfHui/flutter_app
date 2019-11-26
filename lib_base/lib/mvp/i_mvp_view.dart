import 'package:flutter/material.dart';

abstract class IMvpView{
  BuildContext getContext();

  void showProgress();

  void hideProgress();

  void showToast(String msg);
}