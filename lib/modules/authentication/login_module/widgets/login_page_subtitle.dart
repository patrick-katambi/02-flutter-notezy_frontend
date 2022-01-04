import 'package:flutter/material.dart';
import 'package:global_news/widgets/large_text.dart';

class LoginPageSubTitle extends StatelessWidget {
  final String text;
  const LoginPageSubTitle({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LargeTitleText(
      text: text,
      fontFmily: 'Mulish',
      fontSize: 25.0,
      color: Colors.grey,
    );
  }
}
