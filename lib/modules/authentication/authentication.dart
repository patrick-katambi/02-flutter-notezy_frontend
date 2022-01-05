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
                const Expanded(
                  child: WelcomeScreenImage(),
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
                const Expanded(
                  flex: 2,
                  child: WelcomeScreenImage(),
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

class WelcomeScreenImage extends StatelessWidget {
  const WelcomeScreenImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    return Container(
      decoration: BoxDecoration(
        // borderRadius: BorderRadius.only(
        //   topRight: orientation == Orientation.landscape
        //       ? const Radius.circular(20.0)
        //       : const Radius.circular(0.0),
        //   bottomRight: const Radius.circular(20.0),
        //   bottomLeft: orientation == Orientation.landscape
        //       ? const Radius.circular(0.0)
        //       : const Radius.circular(20.0),
        // ),
        gradient: LinearGradient(
          begin: orientation == Orientation.landscape
              ? Alignment.centerRight
              : Alignment.bottomCenter,
          end: orientation == Orientation.landscape
              ? Alignment.centerLeft
              : Alignment.topCenter,
          colors: <Color>[
            Theme.of(context).scaffoldBackgroundColor,
            Theme.of(context).primaryColor,
          ],
        ),
        // image: const DecorationImage(
        //   image: AssetImage('assets/images/skateboard.png'),
        //   fit: BoxFit.cover,
        // ),
      ),
    );
  }
}
