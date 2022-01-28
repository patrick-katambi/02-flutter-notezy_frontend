import 'package:flutter/foundation.dart';
import 'package:global_news/core/models.dart';

class UserDomain with ChangeNotifier {
  UserModel _user;

  UserDomain(this._user);

  UserModel get user => _user;

  void setUser(UserModel user) {
    _user = user;
    notifyListeners();
  }
}
