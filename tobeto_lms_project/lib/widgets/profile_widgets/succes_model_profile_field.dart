import 'package:flutter/material.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/customizable_radar_chart.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/customize_container_profile.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/succes_scores.dart';

class SuccesModelProfileField extends CustomizeContainerProfile {
  const SuccesModelProfileField({super.key, required super.title});

  @override
  Widget insideOfContainer() {
    return Column(
      children: [
        //TODO chart içindeki rakamlar dinamik renk ver. Darkta da siyah kalıyor.
        CustomizableRadarChart(),
        const SuccesScores(),
      ],
    );
  }
}
