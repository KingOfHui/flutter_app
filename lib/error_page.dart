import 'package:flutter/material.dart';
import 'package:lib_base/lib_base.dart';

class ErrorPage extends StatelessWidget {
  final String errorMessage;

  final TextEditingController textEditingController =
      new TextEditingController();

  ErrorPage(this.errorMessage);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: Colours.app_main,
      child: new Center(
        child: Container(
          alignment: Alignment.center,
          width: width,
          height: width,
          decoration: new BoxDecoration(
            color: Colors.white.withAlpha(30),
            gradient:
                RadialGradient(tileMode: TileMode.mirror, radius: 0.1, colors: [
              Colors.white.withAlpha(10),
                  Colours.app_main.withAlpha(100),
            ]),
            borderRadius: BorderRadius.all(Radius.circular(width / 2)),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.verified_user,
//                  image: im,
//                  width: 90.0,
//                  height: 90.0
              ),
              new SizedBox(
                height: 11,
              ),
              Material(
                child: new Text(
                  "Error Occur",
                  style: new TextStyle(fontSize: 24, color: Colors.white),
                ),
                color: Colours.app_main,
              ),
              new SizedBox(
                height: 40,
              ),
              new Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new FlatButton(
                      color: Colours.bg_gray.withAlpha(100),
                      onPressed: () {
                        String content = errorMessage;
                        textEditingController.text = content;
//                        CommonUtils.showEditDialog(
//                            context,
//                            "Feedback",
//                            (title) {}, (res) {
//                          content = res;
//                        }, () {
//                          if (content == null || content.length == 0) {
//                            return;
//                          }
//                          CommonUtils.showLoadingDialog(context);
//                          IssueDao.createIssueDao(
//                              "CarGuo", "app_flutter", {
//                            "title": "Feedback",
//                            "body": content
//                          }).then((result) {
//                            Navigator.pop(context);
//                            Navigator.pop(context);
//                          });
//                        },
//                            titleController: new TextEditingController(),
//                            valueController: textEditingController,
//                            needTitle: false);
                      },
                      child: Text("Report")),
                  new SizedBox(
                    width: 40,
                  ),
                  new FlatButton(
                      color: Colours.app_main.withAlpha(100),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("Back"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
