import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:global_news/core/models.dart';
import 'package:global_news/modules/module_authentication/module_registration/data/user_registration.dart';
import 'package:global_news/public_domains/user.dart';
import 'package:http/http.dart';

class Registration with ChangeNotifier {
  bool _loading = false;

  bool get loading => _loading;

  void setLoading(bool loading) {
    _loading = loading;
    notifyListeners();
  }

  late String _username;
  late String _email;
  late String _phoneNumber;
  late String _password;

  void setUsername(String username) => _username = username;

  void setEmail(String email) => _email = email;

  void setPhoneNumber(String phoneNumber) => _phoneNumber = phoneNumber;

  void setPassword(String password) => _password = password;

  Future<void> register() async {
    _loading = true;
    notifyListeners();

    try {
      final Response response = await UserRegistration.register(
        UserRegistrationModel(
          username: _username,
          email: _email,
          phoneNumber: "255$_phoneNumber",
          password: _password,
        ),
      );

      if (response.statusCode == 200) {
        print(json.encode(jsonDecode(jsonEncode(response.body))));
      } else {
        throw Exception('Failed to register user.');
      }
    } catch (exception, stack) {
      // print('exception $exception');
      // print('stack: $stack');
      throw Exception('Something wrong with request');
    }

    _loading = false;
    notifyListeners();
  }
}
