import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:tobeto_lms_project/constants/colors/colors_of_review_screen.dart';
import 'package:tobeto_lms_project/data/mock_data.dart';
import 'package:tobeto_lms_project/widgets/review_widgets/exam_card.dart';

class TestAndResultCardsField extends StatelessWidget {
  TestAndResultCardsField({Key? key}) : super(key: key);
  final resultListScores = ProfileInformationData().resultsList;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (String examName in requiredExmamsList)
          ExamCard(
            examName: examName,
            scorePercent: resultListScores[resultListScores.indexWhere(
                            (element) => element.name == examName) !=
                        -1
                    //eğer index yoksa -1 (eksi bir döndürüyor)
                    ? resultListScores
                        .indexWhere((element) => element.name == examName)
                    : 0]
                .score,
            scorePercentVisibility: resultListScores
                .where((element) => element.name == examName)
                .toList()
                .isNotEmpty,
            isScoreNotEmpty: resultListScores
                .where((element) => element.name == examName)
                .toList()
                .isNotEmpty,
          )
      ],
    );
  }
}
