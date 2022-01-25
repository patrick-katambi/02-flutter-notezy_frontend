import 'package:flutter/material.dart';
import 'package:global_news/modules/module_authentication/module_registration/domain/registration.dart';
import 'package:global_news/widgets/text_field.dart';
import 'package:provider/provider.dart';

class EmailField extends StatefulWidget {
  const EmailField({Key? key}) : super(key: key);

  @override
  _EmailFieldState createState() => _EmailFieldState();
}

class _EmailFieldState extends State<EmailField> {
  final _emailFieldController = TextEditingController();

  @override
  void dispose() {
    _emailFieldController.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final registrationDomain = context.watch<Registration>();

    return TextFieldCustom(
      controller: _emailFieldController,
      onChanged: (value) => registrationDomain.setEmail(value),
      hint: 'my_email@gmail.com',
      labelText: 'Email',
      validator: (value) {
        if (value == null) {
          return 'Email must not be null';
        }

        if (value.contains('@') == false) {
          return 'Email should have an "@" symbol';
        }

        return null;
      },
    );
  }
}
