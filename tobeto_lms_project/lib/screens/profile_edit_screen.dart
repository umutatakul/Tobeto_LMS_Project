import 'package:flutter/material.dart';
import 'package:tobeto_lms_project/widgets/custom_app_bar_widget.dart';
import 'package:tobeto_lms_project/widgets/custom_drawer.dart';

class ProfileEditScreen extends StatelessWidget {
  const ProfileEditScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        //Tab Controller ile ilgili yazı
        //https://medium.com/@iremakdgn/flutter-tabbar-tabbar-view-e3a60add2eb5
        //Bu video daha iyi
        //https://www.youtube.com/watch?v=3MH7gEnlzx0

        DefaultTabController(
            length: 6,
            initialIndex: 0,
            child: Scaffold(
              appBar: AppBar(
                centerTitle: true,
                title: const Text("Profile Düzenleme"),
                bottom: const TabBar(tabs: [
                  Tab(
                    icon: Icon(Icons.person),
                  ),
                  Tab(
                    icon: Icon(Icons.work_outline),
                  ),
                  Tab(
                    icon: Icon(Icons.import_contacts_outlined),
                  ),
                  Tab(
                    icon: Icon(Icons.verified_outlined),
                  ),
                  Tab(
                    icon: Icon(Icons.card_membership),
                  ),
                  Tab(
                    icon: Icon(Icons.language),
                  ),
                ]),
              ),
              //appBar: CustomAppBarWidget(appBarTitle: "Profil Düzenleme"),
              drawer: CustomDrawer(),
              body: const TabBarView(children: [
                Center(child: Text("Profil bilgileri düzenlem sayfası")),
                Center(child: Text("Deneyim bilgileri düzenlem sayfası")),
                Center(child: Text("Eğitim bilgileri düzenlem sayfası")),
                Center(child: Text("Yetkinlik bilgileri düzenlem sayfası")),
                Center(child: Text("Sertifika bilgileri düzenlem sayfası")),
                Center(child: Text("Sosyal medya bilgileri düzenlem sayfası")),
              ]),
            ));
  }
}
