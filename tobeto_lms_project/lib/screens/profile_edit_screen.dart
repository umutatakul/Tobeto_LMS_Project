import 'package:flutter/material.dart';
import 'package:tobeto_lms_project/widgets/custom_app_bar_widget.dart';
import 'package:tobeto_lms_project/widgets/custom_drawer.dart';

class ProfileEditScreen extends StatelessWidget {
  const ProfileEditScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWidget(appBarTitle: "Profil Düzenleme"),
      drawer: CustomDrawer(),
      //Tab Controller ile ilgili yazı
      //https://medium.com/@iremakdgn/flutter-tabbar-tabbar-view-e3a60add2eb5
      body: Column(
        children: [DefaultTabController(length: 6, child: Text("data"))],
      ),
    );
  }
}
