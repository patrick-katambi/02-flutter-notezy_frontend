import 'package:flutter/material.dart';
import 'package:global_news/core/utils/icons.dart';

class BarBackIcon extends StatelessWidget {
  const BarBackIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Icon(barBackIconData),
      ),
    );
  }
}
