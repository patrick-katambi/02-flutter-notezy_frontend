import 'package:flutter/material.dart';

class AppTheme {
  get darkTheme => ThemeData(
        primaryColor: const Color(0xff140F48),
        scaffoldBackgroundColor: const Color(0xff070706),
        textTheme: const TextTheme(
          bodyText1: TextStyle(fontFamily: 'Mulish', color: Colors.white),
        ),
        brightness: Brightness.dark,
      );

  get lightTheme => ThemeData(
    primaryColor: const Color(0xff140F48),
    scaffoldBackgroundColor: Colors.white,
    textTheme: const TextTheme(
      bodyText1: TextStyle(fontFamily: 'Mulish', color: Colors.black),
    ),
    brightness: Brightness.dark,
  );

// get lightTheme => ThemeData(
//   primarySwatch: Colors.grey,
//   appBarTheme:
//   AppBarTheme(brightness: Brightness.light, color: AppColors.grey2,),
//   inputDecorationTheme: InputDecorationTheme(
//     hintStyle: TextStyle(color: AppColors.textGrey),
//     labelStyle: TextStyle(color: AppColors.white),
//   ),
//   canvasColor: AppColors.white,
//   brightness: Brightness.light,
//   accentColor: AppColors.grey2,
//   accentIconTheme: IconThemeData(color: Colors.black),
// );
}
