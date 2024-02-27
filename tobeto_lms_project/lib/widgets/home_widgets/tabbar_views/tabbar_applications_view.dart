import 'package:flutter/material.dart';
import 'package:tobeto_lms_project/screens/applications_screen.dart';
import 'package:tobeto_lms_project/widgets/home_widgets/tabbar_application_card_home_screen.dart';

class TabbarApplicationsView extends StatelessWidget {
  const TabbarApplicationsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // { Approved, InProgress, Rejected }

        //------Başvurularım Kartlarıı---------
        //Başvurum onaylandı
        const TabbarApplicationCardHomeScreen(
          status: "Approved",
          organizationName: "İstanbul Kodluyor",
        ),

        //------------Başvuru Değerlendirmede-----------
        const TabbarApplicationCardHomeScreen(
          status: "InProgress",
          organizationName: "Flutter Eğitimi",
        ),

        //------------Başvuru Reddedildi-----------
        const TabbarApplicationCardHomeScreen(
          status: "Rejcted",
          organizationName: ".NET Eğitimi",
        ),
        //-----------Tüm Başvuruları Görüntüle
        ElevatedButton(
            onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => ApplicationsScreen())),
            child: const Text("Tüm Başvurularımı Gör"))
      ],
    );
  }
}
