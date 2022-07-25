import 'package:flutter/material.dart';

//This includes all the colors that are used for simpler understanding
class MyThemes {
  static const primary = Colors.blueAccent;
  static const secondary = Colors.black;
  static const primaryColor = Colors.blue;
  static const newColor = Colors.green;
  static const secondaryColor = Colors.white;
  static const accent = Colors.grey;
  static const accentColor = Colors.blueGrey;
  static const highlight = Colors.red;
  static const noColor = Colors.transparent;

  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade900,
    primaryColorDark: primaryColor,
    colorScheme: const ColorScheme.dark(primary: primary),
    dividerColor: Colors.white,
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: primaryColor,
    colorScheme: const ColorScheme.light(primary: primary),
    dividerColor: Colors.black,
  );
}
