import 'package:flutter/material.dart';
import 'package:social_media_app/services/preferences/darkTheme_preference.dart';

class ThemeProvider with ChangeNotifier {
  DarkThemePreferences preferencess = DarkThemePreferences();
  bool _darkTheme = false;
  bool get getDarkTheme => _darkTheme;

  set setTheTheme(bool value) {
    _darkTheme = value;

    preferencess.setDarkTheme(value);
    notifyListeners();
  }
}
