import 'package:shared_preferences/shared_preferences.dart';

class DarkThemePreferences {
  static const ThemeKey = 'Theme-Key';

  //Set the theme method in sharedPreferences

  setDarkTheme(bool value) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setBool(ThemeKey, value);
  }

//get the method of sharedPreferences

  Future<bool> getDarkThemeData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getBool(ThemeKey) ?? false;
  }
}