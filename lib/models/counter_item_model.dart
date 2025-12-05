import 'package:flutter/foundation.dart';

class CounterItemModel with ChangeNotifier {
  int _quantity = 0;

  int get quantity => _quantity;

  void increment() {
    _quantity++;
    notifyListeners();  // Notify listeners that the state has changed
  }

  void decrement() {
    _quantity--;
    notifyListeners();  // Notify listeners (UI) that the counter has changed
  }

  void setQuantity(int value) {
    _quantity = value;
    notifyListeners();
  }

  void reset() {
    _quantity = 0;
    notifyListeners();  // Notify listeners to reset the UI
  }
}