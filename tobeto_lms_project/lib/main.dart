import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tobeto_lms_project/api/blocs/auth_bloc/auth_bloc.dart';
import 'package:tobeto_lms_project/api/repositories/auth_repository.dart';
import 'package:tobeto_lms_project/firebase_options.dart';
import 'package:tobeto_lms_project/screens/calendar_screen.dart';
import 'package:tobeto_lms_project/screens/catalogue_screen.dart';
import 'package:tobeto_lms_project/screens/home_screen.dart';
import 'package:tobeto_lms_project/screens/login_screen.dart';
import 'package:tobeto_lms_project/screens/profile_screen.dart';
import 'package:tobeto_lms_project/screens/review_screen.dart';
import 'package:tobeto_lms_project/theme/custom_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(
    const TobetoApp(),
  );
}

class TobetoApp extends StatelessWidget {
  const TobetoApp({super.key});

  @override
  Widget build(BuildContext context) {
    //TODO contextli değişkeni üstte nasıl tanımlayacağız
    final appliedTextTheme =
        GoogleFonts.robotoCondensedTextTheme(Theme.of(context).textTheme);
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) =>
              AuthBloc(AuthRepository(), FirebaseAuth.instance),
        )
      ],
      child: MaterialApp(
        title: "Tobeto App ",
        theme: ThemeData.from(
          colorScheme: CustomTheme.lightColorScheme,
          useMaterial3: false,
        ).copyWith(
          drawerTheme: const DrawerThemeData().copyWith(
            backgroundColor: Colors.blueAccent.shade100,
          ),
          textTheme: appliedTextTheme,
        ),

        //Ana temamızı light ve dark temamızı otomatik emam modumuzu belirliyoruz
        //CustomTheme.lightTheme,

        darkTheme:
            ThemeData.from(colorScheme: CustomTheme.darkColorScheme).copyWith(
          textTheme: appliedTextTheme.apply(
              //Dark theme de theme.of(context).textsyle ile aldığım texlteri rengi siyah kalıyor
              //düz themada style almadıklarım renk değişime uyum sağlamıştı
              //Bu aldığım renkleri set ederk içime sinmese de bu şekilde düzelttim

              bodyColor: CustomTheme.darkColorScheme.onBackground,
              displayColor: CustomTheme.darkColorScheme.onBackground),
        ),
        // darkTheme: CustomTheme.darkTheme,

        themeMode: ThemeMode.system,

        //Cihazın tema modunu terrminale şunları yazarak değiştiriyoruz :
        //adb shell "cmd uimode night yes"
        //adb shell "cmd uimode night no"

        //Named Route-Routing eklendiği yer
        initialRoute: '/',
        routes: {
          '/': (context) => const //ProfileEditScreen(),
              LoginScreen(),
          //'/signup': (context) => const SignupScreen(),
          '/home': (context) => const HomeScreen(),
          '/profile': (context) => ProfileScreen(),
          '/catalogue': (context) => const CatalogueScreen(),
          '/calendar': (context) => const CalendarScreen(),
          '/review': (context) => ReviewScreen(),
        },

        //home: const MyHomePage(),
      ),
    );
  }
}
