import 'package:lib_base/mvp/i_mvp_view.dart';
import 'package:lib_base/mvp/i_presenter.dart';

class BasePagePresenter<V extends IMvpView> extends IPresenter{

  V view;

  BasePagePresenter();

  @override
  void deactivate() {
    // TODO: implement deactivate
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
  }

  @override
  void didUpdateWidgets<W>(W oldWidget) {
    // TODO: implement didUpdateWidgets
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }

  @override
  void initState() {
    // TODO: implement initState
  }


}