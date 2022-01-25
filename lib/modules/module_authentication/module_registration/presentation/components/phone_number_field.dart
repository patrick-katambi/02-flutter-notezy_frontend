import 'package:flutter/material.dart';
import 'package:global_news/modules/module_authentication/module_registration/domain/registration.dart';
import 'package:global_news/widgets/text_field.dart';
import 'package:provider/provider.dart';

class PhoneNumberField extends StatefulWidget {
  const PhoneNumberField({Key? key}) : super(key: key);

  @override
  _PhoneNumberFieldState createState() => _PhoneNumberFieldState();
}

class _PhoneNumberFieldState extends State<PhoneNumberField> {
  final _phoneNumberFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final registrationDomain = context.watch<Registration>();

    return TextFieldCustom(
      controller: _phoneNumberFieldController,
      onChanged: (value)  => registrationDomain.setPhoneNumber(value),
      hint: '255701122345',
      keyboardType: TextInputType.phone,
      labelText: 'Phone Number',
      validator: (value) {
        if (value == null) {
          return 'Phone Number must not be null';
        }

        if (value.length < 5) {
          return 'Phone Number must have at least 5 letters';
        }

        if (value.contains(' ')) {
          return 'No spaces allowed';
        }

        return null;
      },
    );
  }
}
