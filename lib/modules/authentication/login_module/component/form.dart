import 'package:flutter/material.dart';
import 'package:global_news/modules/authentication/login_module/widgets/email_field.dart';
import 'package:global_news/modules/authentication/login_module/widgets/password_field.dart';

class LoginForm extends StatefulWidget {
  final GlobalKey<FormState> loginFormKey;
  const LoginForm({
    Key? key,
    required this.loginFormKey,
  }) : super(key: key);

  @override
  Login_FormState createState() => Login_FormState();
}

// ignore: camel_case_types
class Login_FormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.loginFormKey,
      child: Column(
        children: const <Widget>[
          EmailField(),
          SizedBox(height: 20.0),
          PasswordField()
        ],
      ),
    );
  }
}
