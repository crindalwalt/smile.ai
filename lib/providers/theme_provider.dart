import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode mode = ThemeMode.dark;

  void changeTheme(bool darkmode) {
    if (darkmode) {
      this.mode = ThemeMode.dark;
      print("theme is changed to dark mode");
      notifyListeners();
    } else {
      this.mode = ThemeMode.light;
      print("theme is changed to light mode");
      notifyListeners();
    }
    // notifyListeners();
  }
}
