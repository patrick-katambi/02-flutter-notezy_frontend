import 'package:flutter/material.dart';

class NormalText extends StatelessWidget {
  final String text;

  const NormalText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.bodyText1);
  }
}
