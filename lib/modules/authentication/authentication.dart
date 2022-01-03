import 'package:flutter/material.dart';
import 'package:global_news/modules/authentication/components/auth_button_section.dart';
import 'package:global_news/modules/authentication/widgets/punch_line.dart';
import 'package:global_news/modules/authentication/widgets/punch_line_supporting.dart';

class Authentication extends StatelessWidget {
  const Authentication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      body: orientation == Orientation.landscape
          ? Row(
              children: [
                Expanded(
                  child: Container(color: Theme.of(context).primaryColor),
                ),
                Expanded(
                  child: ListView(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    physics: const BouncingScrollPhysics(),
                    children: [
                      const SizedBox(height: 20.0),
                      const PunchLine(),
                      const SizedBox(height: 20.0),
                      const SupportingPunchLine(),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.25,
                      ),
                      const AuthButtonSection(),
                    ],
                  ),
                )
              ],
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Container(color: Theme.of(context).primaryColor),
                ),
                Expanded(
                  child: ListView(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    physics: const BouncingScrollPhysics(),
                    children: <Widget>[
                      const SizedBox(height: 20.0),
                      const PunchLine(),
                      const SizedBox(height: 20.0),
                      const SupportingPunchLine(),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.06,
                      ),
                      const AuthButtonSection(),
                      const SizedBox(height: 40.0)
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
