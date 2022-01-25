import 'dart:convert';

import 'package:global_news/core/models.dart';
import 'package:http/http.dart' as http;

class UserRegistration {
  static Future<http.Response> register(UserRegistrationModel model) async {
    var url = Uri.parse(
        "https://peaceful-anchorage-62015.herokuapp.com/api/v1/users/");

    Map<String, String> headers = {
      'Content-Type': 'application/json;charset=UTF-8',
      'Charset': 'utf-8'
    };

    return await http.post(
      url,
      body: jsonEncode(<String, String>{
        "username": model.username,
        "email": model.email,
        "phoneNumber": model.phoneNumber,
        "password": model.password
      }),
        headers: headers
    );
  }
}
