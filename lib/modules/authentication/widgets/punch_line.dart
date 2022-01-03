import 'package:flutter/material.dart';
import 'package:global_news/modules/authentication/texts.dart';
import 'package:global_news/widgets/large_text.dart';

class PunchLine extends StatelessWidget {
  const PunchLine({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const LargeTitleText(text: welcomePunchLine);
  }
}
