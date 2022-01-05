import 'package:flutter/material.dart';
import 'package:global_news/widgets/button.dart';
import 'package:global_news/widgets/normal_text.dart';

class RegisterButton extends StatelessWidget {
  final GlobalKey<FormState> registerFormKey;
  const RegisterButton({
    Key? key,
    required this.registerFormKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonGlobal(
      onPressed: () {
        if (registerFormKey.currentState!.validate()) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: NormalText(text: 'Processing Data')),
          );
        }
      },
      text: 'Register',
    );
  }
}
