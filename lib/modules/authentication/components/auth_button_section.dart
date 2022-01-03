import 'package:flutter/material.dart';
import 'package:global_news/modules/authentication/widgets/auth_button.dart';
import 'package:global_news/modules/screens.dart';

class AuthButtonSection extends StatelessWidget {
  const AuthButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    return orientation == Orientation.landscape
        ? Container(
            margin: EdgeInsets.only(
              bottom: orientation == Orientation.landscape ? 20.0 : 0.0,
            ),
            child: Column(
              children: const [
                AuthScreenButton(route: loginRoute, text: 'login'),
                SizedBox(height: 20.0),
                AuthScreenButton(
                  route: registerRoute,
                  text: 'register',
                  isLighter: true,
                ),
              ],
            ),
          )
        : Row(
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
