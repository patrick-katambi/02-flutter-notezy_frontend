import 'package:flutter/material.dart';
import 'package:global_news/modules/authentication/login_module/widgets/email_field.dart';
import 'package:global_news/modules/authentication/login_module/widgets/password_field.dart';
import 'package:global_news/widgets/bar.dart';
import 'package:global_news/widgets/button.dart';
import 'package:global_news/widgets/normal_text.dart';

class Login extends StatefulWidget {
  static String name = '/login';
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _loginFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: bar(title: 'login', context: context),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: orientation == Orientation.landscape
              ? MediaQuery.of(context).size.width * 0.15
              : 20.0,
        ),
        physics: const BouncingScrollPhysics(),
        children: [
          const SizedBox(height: 20.0),
          Form(
            key: _loginFormKey,
            child: Column(
              children: const <Widget>[
                EmailField(),
                SizedBox(height: 20.0),
                PasswordField()
              ],
            ),
          ),
          const SizedBox(height: 20.0),
          ButtonGlobal(
            onPressed: () {
              if (_loginFormKey.currentState!.validate()) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: NormalText(text: 'Processing Data')),
                );
              }
            },
            text: 'Submit',
          ),
        ],
      ),
    );
  }
}
