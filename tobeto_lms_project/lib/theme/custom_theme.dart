import 'package:flutter/material.dart';

class CustomTheme {
  static const ColorScheme lightColorScheme = ColorScheme(
    primary: Colors.blue,
    secondary: Colors.green,
    surface: Colors.white,
    background: Colors.white,
    error: Colors.red,
    onPrimary: Colors.purple,
    onSecondary: Colors.white,
    onSurface: Colors.black,
    onBackground: Colors.black,
    onError: Colors.white,
    brightness: Brightness.light,
  );
  static const ColorScheme darkColorScheme = ColorScheme(
    primary: Colors.black,
    secondary: Colors.yellow,
    surface: Colors.black,
    background: Colors.black,
    error: Colors.red,
    onPrimary: Colors.purple,
    onSecondary: Colors.black,
    onSurface: Colors.white,
    onBackground: Colors.white,
    onError: Colors.white,
    brightness: Brightness.dark,
  );
  static final ThemeData lightTheme = ThemeData.from(
    colorScheme: lightColorScheme,
    //fontFamily: 'Roboto',
    // Diğer stiller ve özellikler
  );
  static final ThemeData darkTheme = ThemeData.from(
    colorScheme: darkColorScheme,
    //fontFamily: 'Roboto',
    // Diğer stiller ve özellikler
  );
}
