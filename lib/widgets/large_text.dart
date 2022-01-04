import 'package:flutter/material.dart';

class LargeTitleText extends StatelessWidget {
  final String text;
  final String? fontFmily;
  final double? fontSize;
  final Color? color;
  const LargeTitleText({
    Key? key,
    required this.text,
    this.fontSize = 30.0,
    this.fontFmily = 'Lora',
    this.color = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: fontFmily,
        color: color,
        fontWeight: FontWeight.bold,
        fontSize: fontSize,
      ),
    );
  }
}
