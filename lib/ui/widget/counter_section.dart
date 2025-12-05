import 'package:flutter/material.dart';
import 'package:learn_flutter_provider/models/counter_model.dart';
import 'package:provider/provider.dart';

class CounterSection extends StatelessWidget {
  const CounterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CounterModel>(
      builder: (_, counterModel, __) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Counter: ${counterModel.counter}',
              style: const TextStyle(fontSize: 24),
            ),
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.remove),
                  onPressed: counterModel.decrement,
                ),
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: counterModel.increment,
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}