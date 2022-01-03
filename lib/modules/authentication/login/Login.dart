import 'package:flutter/material.dart';
import 'package:global_news/modules/authentication/register/Register.dart';
import 'package:global_news/widgets/bar.dart';

class Login extends StatelessWidget {
  static String name = '/login';
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: bar(title: 'login'),
      body: const Center(
        child: Text("Login"),
      ),
    );
  }
}
