import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:global_news/core/app_routes.dart';
import 'package:global_news/modules/module_authentication/authentication.dart';
import 'package:global_news/modules/module_authentication/module_login/presentation/login.dart';
import 'package:global_news/modules/module_authentication/module_registration/domain/registration.dart';
import 'package:global_news/modules/module_authentication/module_registration/presentation/register.dart';
import 'package:global_news/modules/module_splash_screen/presentation/splash.dart';
import 'package:global_news/public_domains/user.dart';
import 'package:provider/provider.dart';

void main() {
  const style = SystemUiOverlayStyle(statusBarColor: Color(0xff140F48));
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

        case splashRoute:
          page = CupertinoPageRoute(builder: (context) => const Splash());
          break;
      }
      return page;
    }

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Registration()),
        ChangeNotifierProvider(create: (_) => UserDomain()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: const Color(0xff140F48),
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
      ),
    );
  }
}
