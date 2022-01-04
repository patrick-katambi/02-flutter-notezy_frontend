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
    var orientation = MediaQuery.of(context).orientation;
    return SizedBox(
      width: orientation == Orientation.landscape
          ? MediaQuery.of(context).size.width
          : MediaQuery.of(context).size.width * 0.45,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Theme.of(context).primaryColor,
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        onPressed: () => Navigator.pushNamed(context, route),
        child: AuthText(text: text),
      ),
    );
  }
}
