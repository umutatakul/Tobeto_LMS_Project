import 'package:flutter/material.dart';
import 'package:tobeto_lms_project/data/mock_data.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/customizable_radar_chart.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/customize_container_profile.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/succes_scores_card.dart';

class SuccesModelProfileField extends CustomizeContainerProfile {
  SuccesModelProfileField({super.key, required super.title});
  final dataOfScores = ProfileInformationData().succesDataMap;
  final dataOfColors = ProfileInformationData().succesDataColorMap;

  @override
  Widget insideOfContainer() {
    return Column(
      children: [
        CustomizableRadarChart(),
        for (var key in dataOfScores.keys)
          SuccesScoresCard(
              succesColor: dataOfColors[key] ?? Colors.amber,
              succesProporty: key,
              succesScores: dataOfScores[key]!),
      ],
    );
  }
}
