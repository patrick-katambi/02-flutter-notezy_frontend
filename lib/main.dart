import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:global_news/modules/authentication/authentication.dart';
import 'package:global_news/modules/authentication/login/Login.dart';
import 'package:global_news/modules/authentication/register/Register.dart';
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
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: const Color(0xff070706),
          textTheme:
              const TextTheme(bodyText1: TextStyle(color: Colors.white))),
      initialRoute: '/',
      onGenerateRoute: onGenerateRoute,
    );
  }
}
