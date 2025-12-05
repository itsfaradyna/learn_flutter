import 'package:flutter/material.dart';
import 'package:learn_flutter_provider/ui/widget/cart_section.dart';
import 'package:learn_flutter_provider/ui/widget/counter_item_section.dart';
import 'package:learn_flutter_provider/ui/widget/user_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UserSection(),
            SizedBox(height: 20),
            CounterItemSection(),
            SizedBox(height: 20),
            Expanded(
              child: CartSection()
            )
          ],
        ),
      ),
    );
  }
}