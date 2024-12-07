import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  bool _isDarkMode = false;
  bool get isDarkMode => _isDarkMode;

  // This is your toggleTheme function
  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    notifyListeners(); // This is important to notify all listeners of the change
  }

  ThemeData get themeData {
    return _isDarkMode ? ThemeData.dark() : ThemeData.light();
  }
}
