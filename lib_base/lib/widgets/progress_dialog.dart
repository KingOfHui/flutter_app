import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lib_base/res/gaps.dart';

class ProgressDialog extends Dialog {

  final String hintText;

  ProgressDialog(this.hintText,{Key key}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: Container(
          height: 88.0,
          width: 120.0,
          decoration: ShapeDecoration(
              color: const Color(0xFF3A3A3A),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Theme(
                data: ThemeData(
                  cupertinoOverrideTheme: CupertinoThemeData(
                    brightness: Brightness.dark // 局部指定夜间模式，加载圈颜色会设置为白色
                  )
                ),
                child: const CupertinoActivityIndicator(radius: 14.0,),
              ),
              Gaps.vGap8,
              Text(hintText,style: const TextStyle(color: Colors.white),)
            ],
          ),
        ),
      ),
    );
  }

}
