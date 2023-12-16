import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Anasayfa"),
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
                        color: Colors.grey,
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
              iconColor: Colors.grey,
              trailing: const Padding(
                padding: EdgeInsets.only(right: 170),
                child: Icon(Icons.home_outlined),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
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
      body: const Center(
        child: Text("Anasyafa"),
      ),
    );
  }
}
