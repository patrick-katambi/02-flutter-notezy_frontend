import 'package:flutter/material.dart';
import 'package:global_news/widgets/bar.dart';
import 'package:global_news/widgets/normalText.dart';

class Register extends StatelessWidget {
  static String name = '/register';
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: bar(title: 'register', context: context),
      body: const Center(
        child: NormalText(text: 'register'),
      ),
    );
  }
}
