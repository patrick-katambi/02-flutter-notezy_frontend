import 'package:flutter/cupertino.dart';
import 'package:global_news/core/models.dart';
import 'package:global_news/modules/module_authentication/module_registration/data/user_registration.dart';
import 'package:global_news/modules/module_authentication/module_registration/domain/utils/saving_user.dart';
import 'package:http/http.dart';

class Registration with ChangeNotifier {
  late String _username;
  late String _email;
  late String _phoneNumber;
  late String _password;

  bool _error = false;
  bool _loading = false;
  String message = "";
  String details = "";
  final String _errorMessage = "Please check your internet connection";
  UserModel user = UserModel(username: "", email: "", phoneNumber: "");

  void clearMessage() {
    message = "";
    notifyListeners();
  }

  void clearDetails() {
    details = "";
    notifyListeners();
  }

  void userClear() {
    user = UserModel(username: "", email: "", phoneNumber: "");
    notifyListeners();
  }

  String get errorMessage => _errorMessage;

  bool get error => _error;

  void setError(value) {
    _error = value;
    notifyListeners();
  }

  bool get loading => _loading;

  void setLoading(bool loading) {
    _loading = loading;
    notifyListeners();
  }

  void setUsername(String username) => _username = username;

  void setEmail(String email) => _email = email;

  void setPhoneNumber(String phoneNumber) => _phoneNumber = phoneNumber;

  void setPassword(String password) => _password = password;

  Future<void> register() async {
    _loading = true;
    notifyListeners();

    final model = UserRegistrationModel(
      username: _username,
      email: _email,
      phoneNumber: "255$_phoneNumber",
      password: _password,
    );

    try {
      final Response response = await UserRegistration.register(model);
      final savedUser = savingUser(response: response);

      user = savedUser[userModelKey];
      notifyListeners();

      message = savedUser[messageKey];
      notifyListeners();

      details = savedUser[detailsKey];
      notifyListeners();

      if (message == "Failed") setError(true);
      if (message == "Success") setError(false);

      _loading = false;
      notifyListeners();
    } on Exception catch (_, __) {
      message = "Failed";
      notifyListeners();

      details = "cannot connect, check your internet";
      notifyListeners();

      user = UserModel(username: "", email: "", phoneNumber: "");
      notifyListeners();

      _loading = false;
      notifyListeners();
    }
  }
}
