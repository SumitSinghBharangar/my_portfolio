import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PortfolioProvider with ChangeNotifier {
  bool isDrawerOpen = false;

  String? _code;
  String? get code => _code;
  ThemeMode? _theme;
  ThemeMode? get theme => _theme;

  void changeLanguage() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    String? loc = sp.getString("language_code");

    if (loc == "hi") {
      await sp.setString("language_code", "en");
      _code = "en";
    } else {
      await sp.setString("language_code", "hi");
      _code = "hi";
    }

    notifyListeners();
  }

  void changeTheme() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    String? themecode = sp.getString("theme_code") ?? "";

    if (themecode == ThemeMode.dark.toString()) {
      sp.setString("theme_code", ThemeMode.light.toString());
      _theme = ThemeMode.light;
    } else {
      sp.setString("theme_code", ThemeMode.dark.toString());
      _theme = ThemeMode.dark;
    }

    notifyListeners();
  }

  void toggleDrawer() {
    isDrawerOpen = !isDrawerOpen;
    notifyListeners();
  }
}
