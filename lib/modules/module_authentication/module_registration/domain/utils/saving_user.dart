import 'dart:convert';
import 'package:global_news/core/models.dart';
import 'package:http/http.dart' as http;

const messageKey = "message";
const detailsKey = "details";
const userModelKey = "userModel";

Map<String, dynamic> savingUser({required http.Response response}) {
  late UserModel userModel;
  final String message = jsonDecode(response.body)[messageKey];
  final String details = jsonDecode(response.body)[detailsKey];

  if (jsonDecode(response.body)[messageKey] != "Failed") {
    userModel = UserModel.fromJson(jsonDecode(response.body));
  } else {
    userModel = UserModel(username: "", email: "", phoneNumber: "");
  }

  return {messageKey: message, detailsKey: details, userModelKey: userModel};
}
