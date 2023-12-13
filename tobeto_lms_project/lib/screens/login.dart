import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController kullaniciKodu = TextEditingController();
  TextEditingController parola = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/loginBackground.png"),
              fit: BoxFit.fill),
        ),
        child: AspectRatio(
          aspectRatio: 11 / 13,
          child: Container(
            margin: const EdgeInsets.only(left: 20.0, right: 20.0),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
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
                  child: SvgPicture.asset("assets/svgs/tobeto_named_logo.svg"),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: kullaniciKodu,
                          autofocus: true,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            labelText: "Kullanıcı Kodu",
                            border: OutlineInputBorder(),
                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          autofocus: false,
                          controller: parola,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.lock_person_sharp),
                            labelText: "Parola",
                            border: OutlineInputBorder(),
                          ),
                          //keyboardType: TextInputType.number,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: () {
                            print(kullaniciKodu.text);
                            print(parola.text);

                            //Size(double.infinity, 20);
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: (Colors.white),
                            backgroundColor: (Colors.purple),
                            fixedSize: const Size(double.maxFinite, 12.0),
                            shape: const ContinuousRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                          ),
                          child: const Text("GİRİŞ YAP"),
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: InkWell(
                    onTap: () {
                      print(" \"Parolamı unuttum\" tıklandı");
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: Text(
                        "Parolamı unututum",
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(color: Colors.blueAccent),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
