import 'package:flutter/material.dart';
import 'package:global_news/modules/module_authentication/module_registration/domain/registration.dart';
import 'package:global_news/widgets/text_field.dart';
import 'package:provider/provider.dart';

class UsernameField extends StatefulWidget {
  const UsernameField({Key? key}) : super(key: key);

  @override
  _UsernameFieldState createState() => _UsernameFieldState();
}

class _UsernameFieldState extends State<UsernameField> {
  final _usernameFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final registrationDomain = context.watch<Registration>();

    return TextFieldCustom(
      controller: _usernameFieldController,
      onChanged: (value) => registrationDomain.setUsername(value),
      hint: 'Patrick_101',
      labelText: 'Username',
      validator: (value) {
        if (value == null) {
          return 'Username must not be null';
        }

        if (value.length < 5) {
          return 'Username must have at least 5 letters';
        }

        if (value.contains(' ')) {
          return 'No spaces allowed';
        }

        return null;
      },
    );
  }
}
