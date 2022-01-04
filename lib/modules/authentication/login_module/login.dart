import 'package:flutter/material.dart';
import 'package:global_news/widgets/bar.dart';
import 'package:global_news/widgets/text_field.dart';

class Login extends StatefulWidget {
  static String name = '/login';
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _emailFieldController = TextEditingController();
  final _passwordFieldController = TextEditingController();
  final _loginFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: bar(title: 'login', context: context),
      body: Form(
        key: _loginFormKey,
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          physics: const BouncingScrollPhysics(),
          children: [
            const SizedBox(height: 20.0),
            TextFieldCustom(
              controller: _emailFieldController,
              onChanged: (value) {},
              validator: (value) {},
              hint: 'my_email@gmail.com',
              labelText: 'Email',
            ),
            const SizedBox(height: 20.0),
            TextFieldCustom(
              controller: _passwordFieldController,
              onChanged: (value) {},
              validator: (value) {},
              isObscured: true,
              hint: 'your secret code',
              labelText: 'Password',
            ),
          ],
        ),
      ),
    );
  }
}
