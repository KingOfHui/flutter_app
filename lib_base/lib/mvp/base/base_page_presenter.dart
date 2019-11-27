import 'package:lib_base/mvp/i_mvp_view.dart';
import 'package:lib_base/mvp/i_presenter.dart';

class BasePagePresenter<V extends IMvpView> extends IPresenter{

  V view;

  BasePagePresenter();

  @override
  void deactivate() {}

  @override
  void didChangeDependencies() {}

  @override
  void didUpdateWidgets<W>(W oldWidget) {}

  @override
  void dispose() {}

  @override
  void initState() {}


}