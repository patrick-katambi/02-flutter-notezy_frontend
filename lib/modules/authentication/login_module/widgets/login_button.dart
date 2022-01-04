import 'package:flutter/material.dart';
import 'package:global_news/widgets/button.dart';
import 'package:global_news/widgets/normal_text.dart';

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
      text: 'Submit',
    );
  }
}
