import 'package:flutter/material.dart';
import 'package:global_news/components/password_field.dart';
import 'package:global_news/modules/module_authentication/module_registration/presentation/components/phone_number_field.dart';
import 'package:global_news/modules/module_authentication/module_registration/presentation/components/username_field.dart';
import 'package:global_news/components/email_field.dart';

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
          PhoneNumberField(),
          SizedBox(height: 20.0),
          EmailField(),
          SizedBox(height: 20.0),
          PasswordField()
        ],
      ),
    );
  }
}
