import 'package:flutter/material.dart';
import 'package:global_news/modules/authentication/register_module/widgets/username_field.dart';
import 'package:global_news/modules/authentication/widgets/email_field.dart';
import 'package:global_news/modules/authentication/widgets/password_field.dart';

class RegisterForm extends StatefulWidget {
  final GlobalKey<FormState> registerFormKey;
  const RegisterForm({
    Key? key,
    required this.registerFormKey,
  }) : super(key: key);

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.registerFormKey,
      child: Column(
        children: const <Widget>[
          UsernameField(),
          SizedBox(height: 20.0),
          EmailField(),
          SizedBox(height: 20.0),
          PasswordField()
        ],
      ),
    );
  }
}
