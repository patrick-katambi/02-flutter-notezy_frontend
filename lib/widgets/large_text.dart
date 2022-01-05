import 'package:flutter/material.dart';

class LargeTitleText extends StatelessWidget {
  final String text;
  final String? fontFmily;
  final double? fontSize;
  final Color? color;
  final TextAlign? alignment;
  const LargeTitleText({
    Key? key,
    required this.text,
    this.fontSize = 30.0,
    this.fontFmily = 'Lora',
    this.color = Colors.white,
    this.alignment = TextAlign.center,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: alignment,
      style: TextStyle(
        fontFamily: fontFmily,
        color: color,
        fontWeight: FontWeight.bold,
        fontSize: fontSize,
      ),
    );
  }
}
