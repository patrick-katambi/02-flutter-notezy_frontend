import 'package:flutter/material.dart';
import 'package:global_news/components/large_text.dart';
import 'package:global_news/components/page_subtitle.dart';

class RegisterMessage extends StatelessWidget {
  const RegisterMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        LargeTitleText(
          text: "Let's get you registered.",
          alignment: TextAlign.left,
        ),
        SizedBox(height: 10.0),
        PageSubTitle(text: "We're gonna have fun 😊"),
        SizedBox(height: 10.0),
      ],
    );
  }
}
