import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tobeto_lms_project/background_auto.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController kullaniciKodu = TextEditingController();
  TextEditingController parola = TextEditingController();
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    // var brightness = View.of(context).platformDispatcher.platformBrightness;
    // bool isDarkMode = brightness == Brightness.dark;
    return Scaffold(
      //drawerEnableOpenDragGesture: false,
      //endDrawerEnableOpenDragGesture: false,
      appBar: AppBar(
        title: const Text("Tobeto Uygulaması"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              height: 70,
              child: DrawerHeader(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SvgPicture.asset(
                      "assets/svgs/tobeto_named_logo.svg",
                      height: 40.0,
                      //width: Null,
                      //fit: BoxFit.cover,
                    ),
                    // SizedBox(
                    //   width: 16,
                    // ),
                    IconButton(
                      icon: const Icon(
                        Icons.close_sharp,
                        //color: Colors.grey,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      iconSize: 30,
                    )
                  ],
                ),
              ),
            ),
            ListTile(
              title: const Text("Anasayfa"),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).pushNamed("/home");
              },
            ),
            ListTile(
              title: const Text("Değerlendirmeler"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text("Profilim"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text("Katalog"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text("Takvim"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text("Tobeto"),
              onTap: () {
                Navigator.pop(context);
              },
              //iconColor: Colors.grey,
              trailing: const Padding(
                padding: EdgeInsets.only(right: 170),
                child: Icon(Icons.home_outlined),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                border: Border.all(
                    //color: Colors.grey,
                    ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              child: const ListTile(
                title: Text("Kullanıcı Adı Soyadı"),
                trailing: Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: Icon(Icons.person_sharp),
                ),
              ),
            ),
            const ListTile(
              //leading: Icon(Icons.copyright), //Icon olarak eklenmek isterse
              title: Text(" \u00a9  2024 Tobeto"),
            )
          ],
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: backgroundAuto(),
            // isDarkMode
            //     ? const AssetImage("assets/images/loginBackgroundDark.png")
            //     : const AssetImage("assets/images/loginBackgroundLight.png"),
            fit: BoxFit.fill,
          ),
        ),
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
                  child: SvgPicture.asset("assets/svgs/tobeto_named_logo.svg"),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: kullaniciKodu,
                          autofocus: false,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.person_2_outlined),
                            labelText: "Kullanıcı Kodu",
                            border: OutlineInputBorder(),
                            //fillColor: Colors.blue,
                            // focusedBorder: OutlineInputBorder(
                            //   borderSide:
                            //       BorderSide(color: Colors.grey, width: .5),
                            // ),
                            // focusColor: Colors.white,
                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),
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
                            labelText: "Parola",
                            border: const OutlineInputBorder(),
                          ),
                          // keyboardType: TextInputType.number,
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
                        "Parolamı unuttum",
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(color: Colors.blueAccent),
                        //Burada temadan gelen rengi ezdik.
                        // Böylece her iki temadada da (light ve dark)
                        //Aynı renk kullanılacak
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
