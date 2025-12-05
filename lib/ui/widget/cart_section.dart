import 'package:flutter/material.dart';
import 'package:learn_flutter_provider/models/cart_item_model.dart';
import 'package:learn_flutter_provider/ui/widget/cart_item_row.dart';
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
                  return ChangeNotifierProvider.value(
                    value: item,
                    child: const CartItemRow(),
                  );
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  final id = DateTime.now().millisecondsSinceEpoch.toString();
                  cartModel.addItem(
                    CartItemModel(
                      id: id,
                      name: 'Item $id',
                    ),
                  );
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