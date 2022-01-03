import 'package:flutter/material.dart';
import 'package:global_news/widgets/normal_text.dart';

class AuthText extends StatelessWidget {
  final String text;
  const AuthText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NormalText(text: text);
  }
}
