import 'package:flutter/material.dart';
import 'package:tobeto_lms_project/data/mock_data.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/customize_container_profile.dart';

class BadgesFieldProfile extends StatelessWidget {
  const BadgesFieldProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomizeContainerProfile(
      title: "Yetkinlik rozetlerim",

      //TODO Buna card ve/veya model oluştur
      //Grid ile 2 2 yap
      widgetOfInside: Center(
        child: Column(
          children: [
            for (var selectedBagde in ProfileInformationData().badgesList)
              Image.network(selectedBagde)
          ],
        ),
      ),
    );
  }
}
