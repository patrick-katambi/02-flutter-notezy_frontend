import 'package:flutter/material.dart';
import 'package:global_news/core/auth_module_texts.dart';
import 'package:global_news/widgets/large_text.dart';

class PunchLine extends StatelessWidget {
  const PunchLine({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    return Container(
      margin: EdgeInsets.only(
        top: orientation == Orientation.landscape ? 20.0 : 0.0,
      ),
      child: const LargeTitleText(text: welcomePunchLine),
    );
  }
}
