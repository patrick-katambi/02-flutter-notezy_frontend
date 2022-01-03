import 'package:flutter/material.dart';
import 'package:global_news/modules/authentication/widgets/auth_button.dart';
import 'package:global_news/modules/screens.dart';

class AuthButtonSection extends StatelessWidget {
  const AuthButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        AuthScreenButton(route: loginRoute, text: 'login'),
        AuthScreenButton(
          route: registerRoute,
          text: 'register',
          isLighter: true,
        ),
      ],
    );
  }
}
