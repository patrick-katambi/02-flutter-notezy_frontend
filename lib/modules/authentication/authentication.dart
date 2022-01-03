import 'package:flutter/material.dart';
import 'package:global_news/modules/authentication/components/auth_button_section.dart';
import 'package:global_news/modules/authentication/widgets/punch_line.dart';
import 'package:global_news/modules/authentication/widgets/punch_line_supporting.dart';

class Authentication extends StatelessWidget {
  const Authentication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(color: Theme.of(context).primaryColor),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: const <Widget>[
                  PunchLine(),
                  SizedBox(height: 20.0),
                  SupportingPunchLine(),
                  Spacer(),
                  AuthButtonSection()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
