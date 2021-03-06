import 'package:flutter/material.dart';
import 'package:global_news/modules/module_otp/presentation/otp_text.dart';

Widget message({required String username, required BuildContext context}) {
  return RichText(
    text: TextSpan(
      text: "Hi ",
      style: Theme.of(context).textTheme.bodyText1!.copyWith(
            fontFamily: "Lora",
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
          ),
      children: <InlineSpan>[
        TextSpan(
          text: username,
          style: const TextStyle(
            decoration: TextDecoration.underline,
            color: Colors.green,
          ),
        ),
        const TextSpan(text: verifyMessage),
      ],
    ),
  );
}
