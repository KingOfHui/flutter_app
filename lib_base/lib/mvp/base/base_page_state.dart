import 'package:flutter/material.dart';
import 'package:lib_base/mvp/base/base_page_presenter.dart';
import 'package:lib_base/mvp/i_mvp_view.dart';
import 'package:lib_base/utils/utils.dart';
import 'package:lib_base/widgets/progress_dialog.dart';
import 'package:lib_base/utils/toast.dart';

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
      try {
        showTransparentDialog(
                  context: context,
                  barrierDismissible: false,
                  builder:(_) {
                    return WillPopScope(
                      onWillPop: () async {
                        // 拦截到返回键，证明dialog被手动关闭
                        _isShowDialog = false;
                        return Future.value(true);
                      },
                      child: ProgressDialog("正在加载..."),
                    );
                  }
              );
      } catch (e) {
        print(e);
      }
    }
  }

  @override
  void showToast(String msg) {
    Toast.show(msg);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    presenter?.didChangeDependencies();
  }

  @override
  void deactivate() {
    super.deactivate();
    presenter?.deactivate();
  }

  @override
  void didUpdateWidget(T oldWidget) {
    super.didUpdateWidget(oldWidget);
    presenter?.didUpdateWidgets<T>(oldWidget);
  }

  @override
  void initState() {
    super.initState();
    presenter?.initState();
  }

//  void didUpdateWidgets<W>(W oldWidget) {
//    presenter?.didUpdateWidgets<W>(oldWidget);
//  }
}