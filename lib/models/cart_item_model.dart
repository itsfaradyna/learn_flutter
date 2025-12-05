import 'package:flutter/foundation.dart';
import 'counter_item_model.dart';

class CartItemModel with ChangeNotifier {
  final String id;
  final String name;
  final CounterItemModel counter;

  CartItemModel({
    required this.id,
    required this.name,
    CounterItemModel? counter,
  }) : counter = counter ?? CounterItemModel() {
    this.counter.addListener(notifyListeners);
  }

  void incrementQuantity() => counter.increment();

  void decrementQuantity() => counter.decrement();

  void setQuantity(int value) => counter.setQuantity(value);

  int get quantity => counter.quantity;
}