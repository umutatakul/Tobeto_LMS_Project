import 'package:flutter/material.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/customizable_timeline_tile.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/customize_container_profile.dart';

class ExperiencesField extends StatelessWidget {
  const ExperiencesField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //https://www.youtube.com/watch?v=WP0h7utvaUc
    //Bu tutorial referans alındı
    //Paket:
    //https://pub.dev/packages/timeline_tile
    return const CustomizeContainerProfile(
      title: "Eğitim Hayatım ve Deneyimler",
      widgetOfInside: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          children: [
            //TODO timelimnlera okul iş ve snee için mockdata oluştur
            //Timeline başlangıcı
            CustomizableTimelineTile(
                isFirst: true, isLast: false, isPast: true),
            //Timeline ın ortası
            CustomizableTimelineTile(
                isFirst: false, isLast: false, isPast: true),
            //Timeline'ın sonu
            CustomizableTimelineTile(
                isFirst: false, isLast: true, isPast: false)
          ],
        ),
      ),
    );
  }
}
