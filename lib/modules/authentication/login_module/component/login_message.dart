import 'package:flutter/material.dart';
import 'package:global_news/modules/authentication/login_module/widgets/login_page_subtitle.dart';
import 'package:global_news/widgets/large_text.dart';

class LoginMessage extends StatelessWidget {
  const LoginMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        LargeTitleText(text: "Let's log you in."),
        SizedBox(height: 10.0),
        LoginPageSubTitle(text: "Welcome back,"),
        SizedBox(height: 10.0),
        LoginPageSubTitle(text: "You've been missed 😱"),
      ],
    );
  }
}
