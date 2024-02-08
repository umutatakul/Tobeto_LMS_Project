import 'package:flutter/material.dart';
import 'package:tobeto_lms_project/controllers/is_score_there_controlller.dart';
import 'package:tobeto_lms_project/controllers/score_percent_controller.dart';
import 'package:tobeto_lms_project/controllers/score_percent_visibility_controller.dart';
import 'package:tobeto_lms_project/data/mock_data.dart';
import 'package:tobeto_lms_project/widgets/review_widgets/exam_card_review.dart';

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
              scorePercent: scorePercentController(resultListScores, examName),
              scorePercentVisibility:
                  scorePercentVisibilityController(resultListScores, examName),
              isScoreNotEmpty: isScoreThere(resultListScores, examName))
      ],
    );
  }
}
