import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tobeto_lms_project/api/blocs/auth_bloc/auth_bloc.dart';
import 'package:tobeto_lms_project/api/blocs/auth_bloc/auth_bloc_state.dart';
import 'package:tobeto_lms_project/api/blocs/auth_bloc/auth_event.dart.dart';
import 'package:tobeto_lms_project/constants/paths/paths_of_login.dart';
import 'package:tobeto_lms_project/constants/strings/login_screen_strings.dart';
import 'package:tobeto_lms_project/screens/home_screen.dart';
import 'package:tobeto_lms_project/screens/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController kullaniciKodu = TextEditingController();
  TextEditingController parola = TextEditingController();
  bool isPasswordVisible = false;

  final LoginStrings _loginStrings = LoginStrings();
  final LoginAssets _loginAssets = LoginAssets();

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    //dark ya da normal modda olduğumuzu kontrol etmek için (backgroudn asset'i kontrol ediyoruz):
    var brightness = View.of(context).platformDispatcher.platformBrightness;
    bool isDarkMode = brightness == Brightness.dark; //dark modda ise true
    return Scaffold(
      appBar: AppBar(
        title: Text(_loginStrings.appBarTitle),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: isDarkMode
                ? AssetImage(_loginAssets.loginBackgroundDarkPath)
                : AssetImage(_loginAssets.loginBackGroundLightPath),
            fit: BoxFit.fill,
          ),
        ),
        child: SingleChildScrollView(
          child: AspectRatio(
            aspectRatio: 11 / 13,
            child: Container(
              margin: const EdgeInsets.only(left: 20.0, right: 20.0),
              decoration: BoxDecoration(
                //color: Colors.white,
                color: Theme.of(context).colorScheme.background,
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 80),
                    child: SvgPicture.asset(LoginAssets().namedLogoPath),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      children: [
                        //---------KULLANICI MAİLİ--------------
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            controller: kullaniciKodu,
                            autofocus: false,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.person_2_outlined),
                              labelText: _loginStrings.userCode,
                              border: const OutlineInputBorder(),
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                        ),
                        // -------PAROLA TEXT FİELD KISMI----------
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            autofocus: false,
                            controller: parola,
                            obscureText: !isPasswordVisible,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.lock_outlined),
                              suffixIcon: InkWell(
                                onTap: () {
                                  setState(() {
                                    isPasswordVisible = !isPasswordVisible;
                                  });
                                },
                                child: Icon(
                                  isPasswordVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                              ),
                              labelText: _loginStrings.password,
                              border: const OutlineInputBorder(),
                            ),
                            //keyboardType: TextInputType.none,
                          ),
                        ),
                        //-----------LOGİN BUTTON---------------
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () {
                              print("Başlangıç");

                              //print(_firebaseAuth.currentUser!.uid);

                              context.read<AuthBloc>().add(
                                    AuthLoginUserEvent(
                                      email: kullaniciKodu.text.trim(),
                                      password: parola.text.trim(),
                                    ),
                                  );

                              print(context.read<AuthBloc>().state.toString());

                              // Navigator.of(context).push(MaterialPageRoute(
                              //     builder: (context) => const HomeScreen()));

                              ///*
                              if (_firebaseAuth.currentUser != null) {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => const HomeScreen(),
                                  ),
                                );
                              } else if (_firebaseAuth.currentUser == null) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text(
                                            "Böyle bir kullanıcı bulunmamaktadır")));
                              }
                              print("BAŞI");

                              print(FirebaseAuth.instance.currentUser);

                              print("SONU");
                              //*/

                              //context.read()<AuthBloc>().add(AuthenticatedState());
                              // Navigator.of(context).push(
                              //   MaterialPageRoute(
                              //     builder: (context) => const HomeScreen(),
                              //   ),
                              // );
                            },
                            style: ElevatedButton.styleFrom(
                              //foregroundColor: (Colors.white),
                              foregroundColor:
                                  (Theme.of(context).colorScheme.onPrimary),
                              backgroundColor:
                                  (Theme.of(context).colorScheme.primary),
                              fixedSize: const Size(double.maxFinite, 12.0),
                              shape: const ContinuousRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                            ),
                            child: Text(LoginStrings().loginButton),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: InkWell(
                      onTap: () {
                        //print(" \"Parolamı unuttum\" tıklandı");
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const SignupScreen(),
                                ));
                              },
                              child: Text(
                                "Hesabım yok",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(color: Colors.blueAccent),
                              ),
                            ),
                            Text(
                              _loginStrings.forgottenPassword,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(color: Colors.blueAccent),
                              //Burada temadan gelen rengi ezdik.
                              // Böylece her iki temadada da (light ve dark)
                              //Aynı renk kullanılacak
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
