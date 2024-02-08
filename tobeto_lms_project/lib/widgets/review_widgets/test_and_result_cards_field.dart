import 'package:flutter/material.dart';
import 'package:tobeto_lms_project/controllers/score_percent_controller.dart';
import 'package:tobeto_lms_project/controllers/score_percent_visibility_controller.dart';
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
              scorePercent: scorePercentController(resultListScores, examName),
              //  resultListScores[resultListScores.indexWhere(
              //                 (element) => element.name == examName) !=
              //             -1
              //         //eğer index yoksa -1 (eksi bir döndürüyor)
              //         ? resultListScores
              //             .indexWhere((element) => element.name == examName)
              //         : 0]
              //     .score,
              scorePercentVisibility:
                  scorePercentVisibilityController(resultListScores, examName),
              //  resultListScores
              //     .where((element) => element.name == examName)
              //     .toList()
              //     .isNotEmpty,
              isScoreNotEmpty: isScoreThere(resultListScores, examName)
              // resultListScores
              //     .where((element) => element.name == examName)
              //     .toList()
              //     .isNotEmpty,
              )
      ],
    );
  }
}

//for içindeki mevcut irdelenen examName i mock datamdaki score listemle kıyasla
//mevcutsa listeme ekle liste boş mu diye bak
bool isScoreThere(List listOfScores, String nameOfExam) {
  return listOfScores
      .where((element) => element.name == nameOfExam)
      .toList()
      .isNotEmpty;
}
