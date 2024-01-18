import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTheme {
  static const ColorScheme lightColorScheme = ColorScheme(
    primary: Colors.purple, //appbar background
    secondary: Colors.green,
    surface: Colors.white, //Listile vs backgroun
    background: Colors.white, //body backgorund
    error: Colors.red,
    onPrimary: Colors.white, //Appbar text
    onSecondary: Colors.white,
    onSurface: Colors.black,
    onBackground: Colors.black,
    onError: Colors.white,
    brightness: Brightness.light,
  );
  static const ColorScheme darkColorScheme = ColorScheme(
    primary: Colors.yellow,
    secondary: Colors.yellow,
    surface: Color.fromARGB(255, 73, 16, 139),
    background: Color.fromARGB(255, 73, 16, 139),
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
