import 'package:flutter/material.dart';
import 'package:global_news/widgets/text_field.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({Key? key}) : super(key: key);

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  final _passwordFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFieldCustom(
      controller: _passwordFieldController,
      onChanged: (value) {},
      isObscured: true,
      hint: 'your secret code',
      labelText: 'Password',
      validator: (value) {
        const characterCount = 5;
        if (value == null) {
          return 'Password must not be null';
        }

        if (value.length < characterCount) {
          return 'Password must have atleast $characterCount characters';
        }

        return null;
      },
    );
  }
}
