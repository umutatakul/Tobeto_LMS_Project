import 'package:flutter/material.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/customizable_radar_chart.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/customize_container_profile.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/succes_scores.dart';

class SuccesModelProfileField extends CustomizeContainerProfile {
  const SuccesModelProfileField({super.key, required super.title});

  @override
  Widget insideOfContainer() {
    //TODO Column u Row yapıcna hata veriyor
    return Column(
      children: [
        CustomizableRadarChart(),
        const SuccesScores(),
      ],
    );
  }
}
