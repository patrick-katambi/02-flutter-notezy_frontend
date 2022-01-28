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
      body: jsonEncode(
        <String, String>{
          "username": model.username,
          "email": model.email,
          "phoneNumber": model.phoneNumber,
          "password": model.password
        },
      ),
      headers: headers,
    );
  }

  // static Map<String, dynamic> savingUser({required http.Response response}) {
  //   late UserModel userModel;
  //   final String message = jsonDecode(response.body)[messageKey];
  //   final String details = jsonDecode(response.body)[detailsKey];
  //
  //   if (jsonDecode(response.body)[messageKey] != "Failed") {
  //     userModel = UserModel.fromJson(jsonDecode(response.body));
  //   } else {
  //     userModel = UserModel(username: "", email: "");
  //   }
  //
  //   return {
  //     messageKey: message,
  //     detailsKey: details,
  //     userModelKey: userModel
  //   };
  // }
}
