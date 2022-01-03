import 'package:flutter/material.dart';
import 'package:global_news/widgets/bar.dart';

class Register extends StatelessWidget {
  static String name = '/register';
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: bar(title: 'register'),
      body: const Center(
        child: Text("Register"),
      ),
    );
  }
}
