import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:global_news/modules/authentication/authentication.dart';
import 'package:global_news/modules/authentication/login_module/login.dart';
import 'package:global_news/modules/authentication/register_module/register.dart';
import 'package:global_news/modules/screens.dart';

void main() {
  const style = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
  SystemChrome.setSystemUIOverlayStyle(style);
  runApp(const Root());
}

class Root extends StatelessWidget {
  const Root({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Route onGenerateRoute(RouteSettings settings) {
      late Route page;
      switch (settings.name) {
        case homeRoute:
          page =
              CupertinoPageRoute(builder: (context) => const Authentication());
          break;

        case loginRoute:
          page = CupertinoPageRoute(builder: (context) => const Login());
          break;

        case registerRoute:
          page = CupertinoPageRoute(builder: (context) => const Register());
          break;
      }
      return page;
    }

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xff9e5c32),
        scaffoldBackgroundColor: const Color(0xff070706),
        fontFamily: 'Lora',
        textTheme: const TextTheme(
          bodyText1: TextStyle(
            fontFamily: 'Mulish',
            color: Colors.white,
          ),
        ),
      ),
      initialRoute: '/',
      onGenerateRoute: onGenerateRoute,
    );
  }
}
