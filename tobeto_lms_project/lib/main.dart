import 'package:flutter/material.dart';
import 'package:tobeto_lms_project/screens/home_screen.dart';
import 'package:tobeto_lms_project/screens/login_screen.dart';
import 'package:tobeto_lms_project/theme/custom_theme.dart';

void main() {
  runApp(
    const TobetoApp(),
  );
}

class TobetoApp extends StatelessWidget {
  const TobetoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tobeto App ",
      theme: ThemeData.from(
        colorScheme: CustomTheme.lightColorScheme,
        useMaterial3: false,
      ).copyWith(
        drawerTheme: const DrawerThemeData().copyWith(
          backgroundColor: Colors.blueAccent.shade100,
        ),
      ),
      //Ana temamızı light ve dark temamızı otomatik emam modumuzu belirliyoruz
      //CustomTheme.lightTheme,

      darkTheme:
          ThemeData.from(colorScheme: CustomTheme.darkColorScheme).copyWith(),
      // darkTheme: CustomTheme.darkTheme,

      themeMode: ThemeMode.system,

      //Cihazın tema modunu terrminale şunları yazarak değiştiriyoruz :
      //adb shell "cmd uimode night yes"
      //adb shell "cmd uimode night no"

      //Named Route-Routing eklendiği yer
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/home': (context) => const HomeScreen(),
      },

      //home: const MyHomePage(),
    );
  }
}
