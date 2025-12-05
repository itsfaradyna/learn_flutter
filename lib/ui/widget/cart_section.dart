import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:learn_flutter_provider/models/cart_model.dart';

class CartSection extends StatelessWidget {
  const CartSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CartModel>(
      builder: (_, cartModel, __) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Cart Items:', style: TextStyle(fontSize: 24)),
            const SizedBox(height: 10),

            Expanded(
              child: ListView.builder(
                itemCount: cartModel.items.length,
                itemBuilder: (context, index) {
                  final item = cartModel.items[index];
                  return ListTile(
                    title: Text(item),
                    trailing: IconButton(
                      icon: const Icon(Icons.remove),
                      onPressed: () => cartModel.removeItem(item),
                    ),
                  );
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  cartModel.addItem('Item ${cartModel.items.length + 1}');
                },
                child: const Text('Add Item to Cart'),
              ),
            ),
          ],
        );
      },
    );
  }
}