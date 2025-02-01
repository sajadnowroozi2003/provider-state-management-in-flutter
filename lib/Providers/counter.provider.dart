import 'package:flutter/material.dart';

class CounterProvider with ChangeNotifier {
  int _number = 0;
  int get number => _number;

  increment() {
    _number++;
    notifyListeners();
  }

  decrement() {
    _number--;
    notifyListeners();
  }
}
