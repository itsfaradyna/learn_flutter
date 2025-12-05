import 'package:flutter/foundation.dart';

class UserModel with ChangeNotifier {
  String _name = 'User';

  String get name => _name;

  void updateName(String newName) {
    _name = newName;
    notifyListeners();  // Notify listeners (UI) when the user name changes
  }
}