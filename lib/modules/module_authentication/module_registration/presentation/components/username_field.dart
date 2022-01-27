import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:global_news/components/text_field.dart';
import 'package:global_news/modules/module_authentication/module_registration/domain/registration.dart';
import 'package:provider/provider.dart';

class UsernameField extends StatefulWidget {
  const UsernameField({Key? key}) : super(key: key);

  @override
  _UsernameFieldState createState() => _UsernameFieldState();
}

class _UsernameFieldState extends State<UsernameField> {
  final _usernameFieldController = TextEditingController();

  @override
  void dispose() {
    _usernameFieldController.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final registrationDomain = context.watch<Registration>();

    return TextFieldCustom(
      controller: _usernameFieldController,
      onChanged: (value) => registrationDomain.setUsername(value),
      hint: 'clark_kent',
      labelText: 'Username',
      validator: (value) {
        const nullCheck = 'Username must not be null';
        if (value == null) return nullCheck;

        const lengthCheck = 'Username must have at least 5 letters';
        if (value.length < 5) return lengthCheck;

        const spacesCheck = 'No spaces allowed';
        if (value.contains(' ')) return spacesCheck;

        return null;
      },
    );
  }
}
