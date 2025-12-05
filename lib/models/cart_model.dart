import 'package:flutter/foundation.dart';
import 'package:learn_flutter_provider/models/cart_item_model.dart';

class CartModel with ChangeNotifier {
  final List<CartItemModel> _items = [];

  List<CartItemModel> get items => _items;

  void addItem(CartItemModel item) {
    _items.add(item);
    notifyListeners();  // Notify listeners (UI) when an item is added
  }

  void removeItem(CartItemModel item) {
    _items.remove(item);
    notifyListeners();  // Notify listeners (UI) when an item is removed
  }
}