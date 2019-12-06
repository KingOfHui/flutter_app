import 'package:flutter/material.dart';

class RegisterModel extends ChangeNotifier {
  int count = 0;

  void add() {
    count += 1;
    notifyListeners();
  }
}
