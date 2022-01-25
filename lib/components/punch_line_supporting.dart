import 'package:flutter/material.dart';
import 'package:global_news/core/auth_module_texts.dart';
import 'package:global_news/widgets/normal_text.dart';

class SupportingPunchLine extends StatelessWidget {
  const SupportingPunchLine({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: NormalText(
        text: welcomeSubPunchLine,
        textAlign: TextAlign.center,
        color: Colors.grey,
      ),
    );
  }
}
