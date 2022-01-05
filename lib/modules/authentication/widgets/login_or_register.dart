import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginOrRegister extends StatelessWidget {
  final String route;
  final String message;
  final String routePlaceHolder;
  const LoginOrRegister({
    Key? key,
    required this.route,
    required this.message,
    required this.routePlaceHolder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: message,
        style: Theme.of(context).textTheme.bodyText1!.copyWith(
              color: Colors.grey,
            ),
        children: <InlineSpan>[
          TextSpan(
            text: routePlaceHolder,
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
            recognizer: TapGestureRecognizer()
              ..onTap = () => Navigator.popAndPushNamed(
                    context,
                    route,
                  ),
          ),
        ],
      ),
    );
  }
}
