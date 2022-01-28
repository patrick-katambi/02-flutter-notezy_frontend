import 'package:flutter/material.dart';
import 'package:global_news/modules/module_otp/presentation/otp_text.dart';

RichText otpMessageDetails(
    {required BuildContext context, required String phoneNumber}) {
  return RichText(
    text: TextSpan(
      text: "$codeTo ",
      style: Theme.of(context).textTheme.bodyText1!.copyWith(
            fontFamily: "Mulish",
            fontSize: 15.0,
            color: Colors.grey,
          ),
      children: <InlineSpan>[
        TextSpan(
          text: "+$phoneNumber.",
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.green,
            decoration: TextDecoration.underline,
          ),
        ),
        const TextSpan(text: writeItDown),
      ],
    ),
  );
}
