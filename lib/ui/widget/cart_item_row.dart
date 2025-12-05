import 'package:flutter/material.dart';
import 'package:learn_flutter_provider/models/cart_item_model.dart';
import 'package:provider/provider.dart';

class CartItemRow extends StatelessWidget {
  const CartItemRow();

  @override
  Widget build(BuildContext context) {
    return Consumer<CartItemModel>(
      builder: (_, item, __) {
        return ListTile(
          title: Text(item.name),
          subtitle: Text('Quantity: ${item.quantity}'),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: const Icon(Icons.remove),
                onPressed: item.decrementQuantity,
              ),
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: item.incrementQuantity,
              ),
            ],
          ),
        );
      },
    );
  }
}