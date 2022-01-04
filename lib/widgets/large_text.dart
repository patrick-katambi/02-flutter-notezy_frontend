import 'package:flutter/material.dart';

class LargeTitleText extends StatelessWidget {
  final String text;
  final String? fontFmily;
  final double? fontSize;
  const LargeTitleText(
      {Key? key,
      required this.text,
      this.fontSize = 30.0,
      this.fontFmily = 'Lora'})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: fontFmily,
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: fontSize,
      ),
    );
  }
}
