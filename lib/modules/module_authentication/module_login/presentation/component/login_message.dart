import 'package:flutter/material.dart';
import 'package:global_news/components/page_subtitle.dart';
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
        PageSubTitle(text: "Welcome back,"),
        SizedBox(height: 10.0),
        PageSubTitle(text: "You've been missed 😱"),
      ],
    );
  }
}
