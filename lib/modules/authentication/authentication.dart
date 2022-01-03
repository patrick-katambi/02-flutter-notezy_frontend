import 'package:flutter/material.dart';
import 'package:global_news/modules/screens.dart';
import 'package:global_news/widgets/bar.dart';
import 'package:global_news/widgets/normalText.dart';

class Authentication extends StatelessWidget {
  const Authentication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: bar(
          title: 'Auth',
          context: context,
          leadingIcon: const SizedBox.shrink()),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const <Widget>[
          AuthText(route: loginRoute, text: 'login'),
          SizedBox(height: 100.0),
          AuthText(route: registerRoute, text: 'register'),
        ],
      ),
    );
  }
}

class AuthText extends StatelessWidget {
  final String route, text;
  const AuthText({
    Key? key,
    required this.route,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Center(
        child: NormalText(text: text),
      ),
    );
  }
}
