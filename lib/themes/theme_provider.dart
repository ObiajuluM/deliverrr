import 'package:deliverrr/themes/dark_mode.dart';
import 'package:deliverrr/themes/light_mode.dart';
import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = lightMode;

  ThemeData get themeData => _themeData;

  bool get isDarkMode => _themeData == darkMode;

  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme() {
    _themeData == lightMode ? themeData = darkMode : themeData = lightMode;
  }
}
