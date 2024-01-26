import 'package:flutter/material.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/customizable_radar_chart.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/customize_container_profile.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/succes_scores_card.dart';

class SuccesModelProfileField extends CustomizeContainerProfile {
  const SuccesModelProfileField({super.key, required super.title});

  @override
  Widget insideOfContainer() {
    return Column(
      children: [
        CustomizableRadarChart(),
        const SuccesScoresCard(
            succesColor: Colors.amber,
            succesProporty: "Deneme",
            succesScores: 12),
      ],
    );
  }
}
