import 'package:flutter/material.dart';
import 'package:global_news/modules/module_authentication/module_registration/domain/registration.dart';
import 'package:global_news/widgets/text_field.dart';
import 'package:provider/provider.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({Key? key}) : super(key: key);

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  final _passwordFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final registrationDomain = context.watch<Registration>();

    return TextFieldCustom(
      controller: _passwordFieldController,
      onChanged: (value) => registrationDomain.setPassword(value),
      isObscured: true,
      hint: 'your secret code',
      labelText: 'Password',
      validator: (value) {
        const characterCount = 5;
        if (value == null) {
          return 'Password must not be null';
        }

        if (value.length < characterCount) {
          return 'Password must have at least $characterCount characters';
        }

        return null;
      },
    );
  }
}
