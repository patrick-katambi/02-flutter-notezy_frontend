import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:global_news/core/app_routes.dart';
import 'package:global_news/core/app_theme.dart';
import 'package:global_news/core/domain/theme.dart';
import 'package:global_news/core/models.dart';
import 'package:global_news/modules/module_authentication/authentication.dart';
import 'package:global_news/modules/module_authentication/module_login/presentation/login.dart';
import 'package:global_news/modules/module_authentication/module_registration/domain/registration.dart';
import 'package:global_news/modules/module_authentication/module_registration/presentation/register.dart';
import 'package:global_news/modules/module_otp/presentation/otp.dart';
import 'package:global_news/core/domain/user.dart';
import 'package:provider/provider.dart';

void main() {
  const style = SystemUiOverlayStyle(statusBarColor: Color(0xff140F48));
  SystemChrome.setSystemUIOverlayStyle(style);
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Registration()),
        ChangeNotifierProvider(
          create: (_) => ThemeDomain(themeMode: ThemeMode.system),
        ),
        ChangeNotifierProxyProvider<Registration, UserDomain>(
          create: (_) => UserDomain(UserModel(username: "", email: "")),
          update: (_, reg, prevUsr) => UserDomain(reg.user),
        ),
      ],
      child: const Root(),
    ),
  );
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
          page = CupertinoPageRoute(builder: (context) => const Otp());
          break;
      }
      return page;
    }

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: AppTheme().lightTheme,
      darkTheme: AppTheme().darkTheme,
      themeMode: context.watch<ThemeDomain>().themeMode,
      initialRoute: '/',
      onGenerateRoute: onGenerateRoute,
    );
  }
}
