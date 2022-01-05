import 'package:flutter/material.dart';
import 'package:global_news/modules/authentication/widgets/page_subtitle.dart';
import 'package:global_news/widgets/large_text.dart';

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
