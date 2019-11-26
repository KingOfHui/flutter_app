import 'package:flutter/material.dart';
import 'package:lib_base/mvp/base/base_page_presenter.dart';
import 'package:lib_base/mvp/i_mvp_view.dart';

abstract class BasePageState<T extends StatefulWidget,P extends BasePagePresenter> extends State<T> implements IMvpView{

  P presenter;
  bool _isShowDialog = false;


  BasePageState(){
    presenter = createPresenter();
    presenter.view = this;
  }

  P createPresenter();

  @override
  BuildContext getContext() {
    return context;
  }

  @override
  void hideProgress() {
    if(mounted && _isShowDialog) {
      _isShowDialog = false;

    }
  }

  @override
  void showProgress() {
    if( mounted && !_isShowDialog) {
      _isShowDialog = true;
      
    }
  }
}