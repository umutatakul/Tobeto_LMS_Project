import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tobeto_lms_project/api/blocs/auth_bloc/auth_bloc.dart';
import 'package:tobeto_lms_project/api/blocs/auth_bloc/auth_event.dart.dart';
import 'package:tobeto_lms_project/constants/paths/paths_of_login.dart';
import 'package:tobeto_lms_project/screens/home_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  // Burada iki tip yaklaşım yaptık
  // 1 controller ile (Form widget ı içinde) _emailController ile almak
  // 2 boş string içine (_password ve _  _confirm password gibi)
  // onSaved built in fonksiyonu ile değer set etme
  //Form alanı için
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  // String _email = "";
  String _password = "";
  String _confirmPassword = "";
  final _emailController = TextEditingController();

  //final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              margin: const EdgeInsets.all(12),
              child: Column(
                children: [
                  SvgPicture.asset(LoginAssets().namedLogoPath),
                  Text(
                    "Hemen öğrenmeye Başla",
                    style: Theme.of(context).textTheme.displayLarge,
                  )
                ],
              )),
          Container(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      prefix: const Icon(Icons.email_outlined),
                      label: Text(
                        "E-mail",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      border: const OutlineInputBorder(),
                      hintText: "kullanici@example",
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Lütfen bir email adresi giriniz";
                      }
                      if (!RegExp(r'^[\w-\.]+@[\w-\.]+\.\w{2,3}$')
                          .hasMatch(value)) {
                        return 'Lütfen geçerli bir email adresi giriniz';
                      }
                      return null;
                    },

                    // onSaved: (value) {
                    //   _email = value!;
                    // },
                  ),
                  TextFormField(
                      decoration: InputDecoration(
                        prefix: const Icon(Icons.password_sharp),
                        label: Text(
                          "Şifre",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        hintText: "Abcd1234",
                        border: const OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Lütfen şifre giriniz';
                        }
                        if (!RegExp(
                                r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$')
                            .hasMatch(value)) {
                          return 'Şifre en az bir büyük harf, bir küçük harf, bir rakam içermeli ve en az 8 karakter uzunluğunda olmalıdır';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _password = value!;
                      }),
                  TextFormField(
                      decoration: InputDecoration(
                        prefix: const Icon(Icons.password_sharp),
                        label: Text(
                          "Şifre Tekrar",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        hintText: "Abcd1234",
                        border: const OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Lütfen şifre tekrarını giriniz';
                        }
                        if (!RegExp(
                                r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$')
                            .hasMatch(value)) {
                          return 'Tekrar şifresi en az bir büyük harf, bir küçük harf, bir rakam içermeli ve en az 8 karakter uzunluğunda olmalıdır';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _confirmPassword = value!;
                      }),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 80.0),
                    child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState!.save();
                            context.read<AuthBloc>().add(AuthCreateUserEvent(
                                email: _emailController.text.trim(),
                                password: _password,
                                confirmPassword: _confirmPassword));

                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const HomeScreen(),
                            ));
                          }
                        },
                        child: const Text("Kayıt Ol")),
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
