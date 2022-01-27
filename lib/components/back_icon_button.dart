import 'package:flutter/material.dart';
import 'package:global_news/components/normal_text.dart';

class BackIconButton extends StatelessWidget {
  const BackIconButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Container(
        width: 113.0,
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.symmetric(
          // horizontal: 15.0,
          vertical: 10.0,
        ),
        decoration: BoxDecoration(
          // color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: const [
            Icon(Icons.chevron_left, color: Colors.grey),
            NormalText(text: 'Go back', color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
