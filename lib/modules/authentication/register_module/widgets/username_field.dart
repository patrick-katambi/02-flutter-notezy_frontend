import 'package:flutter/material.dart';
import 'package:global_news/widgets/text_field.dart';

class UsernameField extends StatefulWidget {
  const UsernameField({Key? key}) : super(key: key);

  @override
  _UsernameFieldState createState() => _UsernameFieldState();
}

class _UsernameFieldState extends State<UsernameField> {
  final _usernameFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFieldCustom(
      controller: _usernameFieldController,
      onChanged: (value) {},
      hint: 'Patrick_101',
      labelText: 'Username',
      validator: (value) {
        if (value == null) {
          return 'Username must not be null';
        }

        if (value.length < 5) {
          return 'Username must have atleast 5 letters';
        }

        if (value.contains(' ')) {
          return 'No spaces allowed';
        }

        return null;
      },
    );
  }
}
