import 'package:flutter/material.dart';
import 'package:global_news/modules/module_otp/presentation/otp_text.dart';

Widget message({required String username}) {
  return RichText(
    text: TextSpan(
      text: "Hi ",
      style: const TextStyle(
        color: Colors.black,
        fontFamily: "Lora",
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
      ),
      children: <InlineSpan>[
        TextSpan(
          text: username,
          style: const TextStyle(decoration: TextDecoration.underline),
        ),
        const TextSpan(text: verifyMessage),
      ],
    ),
  );
}