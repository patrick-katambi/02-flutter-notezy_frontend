import 'package:flutter/material.dart';
import 'package:global_news/components/button.dart';
import 'package:global_news/components/normal_text.dart';

class LoginButton extends StatelessWidget {
  final GlobalKey<FormState> loginFormKey;
  const LoginButton({
    Key? key,
    required this.loginFormKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonGlobal(
      onPressed: () {
        if (loginFormKey.currentState!.validate()) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: NormalText(text: 'Processing Data')),
          );
        }
      },
      text: 'Login', buttonText: null,
    );
  }
}
