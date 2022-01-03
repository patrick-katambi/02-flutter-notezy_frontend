import 'package:flutter/material.dart';
import 'package:global_news/modules/authentication/widgets/auth_text.dart';

class AuthScreenButton extends StatelessWidget {
  final String route;
  final String text;
  final bool? isLighter;
  const AuthScreenButton({
    Key? key,
    required this.route,
    required this.text,
    this.isLighter = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.45,
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isLighter == false
              ? Theme.of(context).primaryColor
              : Colors.green,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: AuthText(text: text),
      ),
    );
  }
}
