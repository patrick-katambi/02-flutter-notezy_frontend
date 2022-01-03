import 'package:flutter/material.dart';
import 'package:global_news/modules/authentication/login/Login.dart';
import 'package:global_news/modules/authentication/register/Register.dart';
import 'package:global_news/widgets/bar.dart';
import 'package:global_news/widgets/normalText.dart';

class Authentication extends StatelessWidget {
  const Authentication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: bar(title: 'Auth'),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, Login.name);
            },
            child: const Center(
              child: NormalText(text: 'login'),
            ),
          ),
          const SizedBox(height: 100.0),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, Register.name);
            },
            child: const Center(
              child: NormalText(text: 'register'),
            ),
          ),
        ],
      ),
    );
  }
}
