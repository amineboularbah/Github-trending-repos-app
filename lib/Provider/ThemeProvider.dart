import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  final String key = 'theme';
  bool _theme = false;

  bool get themeName => _theme;

  ThemeProvider() {
    _theme = true;
  }
  toggleTheme() {
    _theme = !_theme;
    notifyListeners();
  }
}
