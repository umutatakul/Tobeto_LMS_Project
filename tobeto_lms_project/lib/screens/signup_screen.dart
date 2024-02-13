import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tobeto_lms_project/constants/paths/paths_of_login.dart';
import 'package:tobeto_lms_project/screens/home_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  //Form alanı için
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _email = "";
  String _password = "";

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
                    decoration: InputDecoration(
                      prefix: const Icon(Icons.email_outlined),
                      label: Text(
                        "E-mail",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      border: OutlineInputBorder(),
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
                    onSaved: (value) {
                      _email = value!;
                    },
                  ),
                  TextFormField(
                      decoration: InputDecoration(
                        prefix: const Icon(Icons.password_sharp),
                        label: Text(
                          "Şifre",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        hintText: "Abcd1234",
                        border: OutlineInputBorder(),
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
                  Padding(
                    padding: const EdgeInsets.only(bottom: 80.0),
                    child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState!.save();

                            //TODO ana ekrana navige et
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                            ));
                          }
                        },
                        child: Text("Kayıt Ol")),
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
