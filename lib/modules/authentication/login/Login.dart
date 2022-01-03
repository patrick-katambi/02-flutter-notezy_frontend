import 'package:flutter/material.dart';
import 'package:global_news/widgets/bar.dart';
import 'package:global_news/widgets/normalText.dart';

class Login extends StatelessWidget {
  static String name = '/login';
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: bar(title: 'login', context: context),
      body: const Center(child: NormalText(text: 'login')),
    );
  }
}
