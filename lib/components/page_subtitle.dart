import 'package:flutter/material.dart';
import 'package:global_news/components/large_text.dart';

class PageSubTitle extends StatelessWidget {
  final String text;
  const PageSubTitle({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LargeTitleText(
      text: text,
      fontFamily: 'Mulish',
      fontSize: 25.0,
      color: Colors.grey,
    );
  }
}
