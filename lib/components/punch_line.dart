import 'package:flutter/material.dart';
import 'package:global_news/components/large_text.dart';
import 'package:global_news/modules/module_authentication/auth_module_texts.dart';

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
