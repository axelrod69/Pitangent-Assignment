import 'dart:ui';

import 'package:flutter/material.dart';

class AppColors {
  static Color backgroundColor(ThemeMode mode) =>
      mode == ThemeMode.dark ? Colors.black : Colors.white;

  static Color textColor(ThemeMode mode) =>
      mode == ThemeMode.dark ? Colors.white : Colors.black;

  static Color cardColor(ThemeMode mode) =>
      mode == ThemeMode.dark ? Colors.blueGrey : Colors.greenAccent;

  static Color appBarColor(ThemeMode mode) =>
      mode == ThemeMode.dark ? Colors.tealAccent : Colors.lightGreenAccent;

  static Color shadowColor(ThemeMode mode) =>
      mode == ThemeMode.dark ? Colors.white70 : Colors.grey;
}
