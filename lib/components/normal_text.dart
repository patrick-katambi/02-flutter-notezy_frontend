import 'package:flutter/material.dart';

class NormalText extends StatelessWidget {
  final String text;
  final TextAlign? textAlign;
  final Color? color;

  const NormalText(
      {Key? key,
      this.textAlign = TextAlign.left,
      // this.color = Colors.white,
      this.color = Colors.black,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.bodyText1!.copyWith(
            color: color,
          ),
    );
  }
}
