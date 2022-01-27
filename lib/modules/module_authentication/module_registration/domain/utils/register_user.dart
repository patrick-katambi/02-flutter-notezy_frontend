import 'dart:convert';

import 'package:global_news/core/models.dart';
import 'package:global_news/modules/module_authentication/module_registration/data/user_registration.dart';
import 'package:http/http.dart';

Future<UserModel> registerUser({required UserRegistrationModel model}) async {
  UserModel user = UserModel(username: "", email: "");
  final Response response = await UserRegistration.register(model);

  if (response.statusCode == 200) {
    final userModel = UserModel.fromJson(jsonDecode(response.body));
    user = userModel;
    Future.delayed(const Duration(seconds: 2));
    return user;
  } else {
    throw Exception('Failed to register user.');
  }
}