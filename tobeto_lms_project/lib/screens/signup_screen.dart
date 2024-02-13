import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tobeto_lms_project/constants/paths/paths_of_login.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextField(
                    decoration: InputDecoration(
                        prefix: const Icon(Icons.email_outlined),
                        label: Text(
                          "E-mail",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        border: OutlineInputBorder()),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        prefix: const Icon(Icons.password_sharp),
                        label: Text(
                          "Pasword",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        border: OutlineInputBorder()),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 80.0),
            child: ElevatedButton(onPressed: () {}, child: Text("Kayıt Ol")),
          )
        ]),
      ),
    );
  }
}
