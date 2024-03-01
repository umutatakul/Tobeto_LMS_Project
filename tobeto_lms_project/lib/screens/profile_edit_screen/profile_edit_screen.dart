import 'package:flutter/material.dart';
import 'package:tobeto_lms_project/constants/strings/profile_edit_screen_strings.dart';
import 'package:tobeto_lms_project/screens/profile_edit_screen/profile_edit_screen_tabs/certificates_tab.dart';
import 'package:tobeto_lms_project/screens/profile_edit_screen/profile_edit_screen_tabs/education_tab.dart';
import 'package:tobeto_lms_project/screens/profile_edit_screen/profile_edit_screen_tabs/experiences_tab.dart';
import 'package:tobeto_lms_project/screens/profile_edit_screen/profile_edit_screen_tabs/skills_tab.dart';
import 'package:tobeto_lms_project/screens/profile_edit_screen/profile_edit_screen_tabs/social_media_accounts_tab.dart';
import 'package:tobeto_lms_project/widgets/custom_bottom_navigation_bar.dart';
import 'package:tobeto_lms_project/widgets/custom_drawer.dart';
import 'package:tobeto_lms_project/screens/profile_edit_screen/profile_edit_screen_tabs/individual_information_tab.dart';

class ProfileEditScreen extends StatelessWidget {
  ProfileEditScreen({Key? key}) : super(key: key);
  final _strings = ProfileEditScreenStrings();

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
                title: Text(_strings.appBarTitle),
                bottom: const TabBar(
                  tabs: [
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
                  ],
                ),
              ),
              //appBar: CustomAppBarWidget(appBarTitle: "Profil Düzenleme"),
              drawer: CustomDrawer(),
              body: TabBarView(children: [
                IndividualInformationTab(),
                ExperiencesTab(),
                EducationTab(),
                SkillsTab(),
                //TODO https://www.youtube.com/watch?v=8L1LmJvyZDU
                //File picker pub get
                const CertificatesTab(),
                //Center(child: Text("Sertifika bilgileri düzenlem sayfası")),
                const SocialMediaAccountsTab(),
              ]),
              bottomNavigationBar: const CustomBottomNavigationBar(),
            ));
  }
}
