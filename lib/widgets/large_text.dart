import 'package:flutter/material.dart';

class LargeTitleText extends StatelessWidget {
  final String text;
  const LargeTitleText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 30.0,
      ),
    );
  }
}
