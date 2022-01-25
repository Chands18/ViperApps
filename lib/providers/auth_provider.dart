import 'package:flutter/material.dart';
import 'package:viper/models/user_model.dart';
import 'package:viper/services/auth_service.dart';

class AuthProvider with ChangeNotifier {
  UserModel _user;

  UserModel get user => _user;

  set user(UserModel user) {
    _user = user;
    notifyListeners();
  }

  Future<bool> register(
      {String name, String username, String email, String password}) async {
    try {
      UserModel user = await AuthService().register(
        name: name,
        username: username,
        email: email,
        password: password,
      );

      _user = user;
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
}
