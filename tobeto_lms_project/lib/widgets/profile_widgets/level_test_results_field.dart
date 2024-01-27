import 'package:flutter/material.dart';
import 'package:tobeto_lms_project/data/mock_data.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/customize_container_profile.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/level_test_result_card.dart';

class LevelTestResultsField extends StatelessWidget {
  LevelTestResultsField({Key? key}) : super(key: key);
  final examsResultList = ProfileInformationData().resultsList;
  @override
  Widget build(BuildContext context) {
    return CustomizeContainerProfile(
      title: "Tobeto Seviye testleri",
      widgetOfInside: Center(
        child: Column(
          children: [
            for (var showedResult in examsResultList)
              LevelTestResultCard(examResult: showedResult),
          ],
        ),
      ),
    );
  }
}
