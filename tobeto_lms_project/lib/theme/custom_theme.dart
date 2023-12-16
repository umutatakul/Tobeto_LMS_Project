import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    textTheme: GoogleFonts.comicNeueTextTheme(
        //Theme.of(context).textTheme,
        ),

    //fontFamily: 'Roboto',
  );
  static final ThemeData darkTheme = ThemeData.from(
    colorScheme: darkColorScheme,
    textTheme: GoogleFonts.comicNeueTextTheme(
        //Theme.of(context).textTheme,
        ),
    //fontFamily: 'Roboto',
    // Diğer stiller ve özellikler
  );
}
