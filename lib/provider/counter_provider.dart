import 'package:flutter/material.dart';

class MyCounter with ChangeNotifier {
  int _counter = 0;

  int get count => _counter;

  void incrementCounter() {
    _counter = _counter + 1;
    notifyListeners();
  }
}
