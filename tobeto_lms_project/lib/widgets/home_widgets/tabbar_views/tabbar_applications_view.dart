import 'package:flutter/material.dart';
import 'package:tobeto_lms_project/widgets/home_widgets/tabbar_application_card_home_screen.dart';

class TabbarApplicationsView extends StatelessWidget {
  const TabbarApplicationsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        // { Approved, InProgress, Rejected }

        //------Başvurularım Kartlarıı---------
        //Başvurum onaylandı
        TabbarApplicationCardHomeScreen(
          status: "Approved",
          organizationName: "İstanbul Kodluyor",
        ),

        //------------Başvuru Değerlendirmede-----------
        TabbarApplicationCardHomeScreen(
          status: "InProgress",
          organizationName: "Flutter Eğitimi",
        ),

        //------------Başvuru Reddedildi-----------
        TabbarApplicationCardHomeScreen(
          status: "Rejcted",
          organizationName: ".NET Eğitimi",
        ),
      ],
    );
  }
}
