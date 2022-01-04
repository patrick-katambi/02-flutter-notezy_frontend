import 'package:flutter/material.dart';
import 'package:global_news/widgets/text_field.dart';

class EmailField extends StatefulWidget {
  const EmailField({Key? key}) : super(key: key);

  @override
  _EmailFieldState createState() => _EmailFieldState();
}

class _EmailFieldState extends State<EmailField> {
  final _emailFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFieldCustom(
      controller: _emailFieldController,
      onChanged: (value) {},
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
