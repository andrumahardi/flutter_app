import 'package:flutter/material.dart';

class CounterModel extends ChangeNotifier {
  int _countNumber = 0;

  int get countNum => _countNumber;

  void add() {
    _countNumber += 1;
    notifyListeners();
  }

  void substract() {
    _countNumber -= 1;
    notifyListeners();
  }
}