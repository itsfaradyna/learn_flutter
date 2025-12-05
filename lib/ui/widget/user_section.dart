import 'package:flutter/material.dart';
import 'package:learn_flutter_provider/models/user_model.dart';
import 'package:provider/provider.dart';

class UserSection extends StatelessWidget {
  const UserSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<UserModel>(
      builder: (_, userModel, __) {
        return Text(
          'User: ${userModel.name}',
          style: const TextStyle(fontSize: 24),
        );
      },
    );
  }
}