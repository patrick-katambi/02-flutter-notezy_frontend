import 'package:flutter/material.dart';

class ThemeDomain with ChangeNotifier {
  late ThemeMode _themeMode;

  ThemeDomain({required ThemeMode themeMode}) {
    _themeMode = themeMode;
    notifyListeners();
  }

  ThemeMode get themeMode => _themeMode;

  void setTheme({required ThemeMode themeMode}) {
    _themeMode = themeMode;
    notifyListeners();
  }
}