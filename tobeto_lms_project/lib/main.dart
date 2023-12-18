import 'package:flutter/material.dart';
import 'package:tobeto_lms_project/screens/home_screen.dart';
import 'package:tobeto_lms_project/screens/login.dart';
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
      theme:
          // ThemeData(
          //   useMaterial3: true,
          //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
          //   brightness: Brightness.light,
          //   textTheme: const TextTheme(
          //     displayLarge: TextStyle(
          //       fontSize: 72,
          //       fontWeight: FontWeight.bold,
          //     ),
          //   ),
          // ),

          ThemeData.from(colorScheme: CustomTheme.lightColorScheme).copyWith(
        drawerTheme: const DrawerThemeData()
            .copyWith(backgroundColor: Colors.blueAccent.shade100),

        // listTileTheme: const ListTileThemeData(
        //   titleTextStyle: TextStyle(color: Colors.white),
        //   style: ListTileStyle.list
        // ),
        textTheme: TextTheme(),
      ),
      //Ana temamızı light ve dark temamızı otomatik emam modumuzu belirliyoruz
      //CustomTheme.lightTheme,
      darkTheme:
          ThemeData.from(colorScheme: CustomTheme.darkColorScheme).copyWith(),
      //darkTheme: CustomTheme.darkTheme,
      themeMode: ThemeMode.system,

      //Cihazın tema modunu terrminale şunları yazarak değiştiriyoruz :
      //adb shell "cmd uimode night yes"
      //adb shell "cmd uimode night no"

      //Named Route-Routing eklendiği yer
      initialRoute: '/',
      routes: {
        '/': (context) => const Login(),
        '/home': (context) => const HomeScreen(),
      },

      //home: const MyHomePage(),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return const Login();
//   }
// }
