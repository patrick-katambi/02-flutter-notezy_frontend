import 'package:flutter/material.dart';
import 'package:global_news/components/normal_text.dart';

class ButtonGlobal extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Widget? buttonText;
  const ButtonGlobal({
    Key? key,
    required this.onPressed,
    required this.buttonText,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Theme.of(context).primaryColor,
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      onPressed: onPressed,
      child: buttonText ?? NormalText(text: text, color: Colors.white),
    );
  }
}
