import 'package:flutter/material.dart';
import 'package:global_news/public_domains/user.dart';
import 'package:global_news/widgets/normal_text.dart';
import 'package:provider/provider.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userDomain = context.watch<UserDomain>();
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          NormalText(text: userDomain.user.username!),
          NormalText(text: userDomain.user.email!),
          NormalText(text: userDomain.user.phoneNumber!),
        ],
      ),
    );
  }
}
