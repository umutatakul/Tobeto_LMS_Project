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
//TODO Controllerları ayrı ayrı dosya olarak closöre taşı

//Mock datamdaki sınav sonuçlarını, ekranda zorunlu olarak listelemek istediğim
//sınav adları ile  kıyasla. Eğer varsa listedeki indekisini al ve ordaki scoru döndür
//eğer -1 yani index yoksa 0 ı döndür
//TODO Veriler için type safe olması amacı ile veri tiplerini tanımla
double scorePercentController(List listOfResults, String nameOfExam) {
  final int indexOfCurrentScore =
      listOfResults.indexWhere((element) => element.name == nameOfExam);
  return listOfResults[indexOfCurrentScore != -1
          //eğer index yoksa -1 (eksi bir ) döndürüyor
          ? indexOfCurrentScore
          : 0]
      .score;
}

bool scorePercentVisibilityController(
    List listOfResultScores, String nameOfExam) {
  return isScoreThere(listOfResultScores, nameOfExam);
}

//for içindeki mevcut irdelenen examName i mock datamdaki score listemle kıyasla
//mevcutsa listeme ekle liste boş mu diye bak
bool isScoreThere(List listOfScores, String nameOfExam) {
  return listOfScores
      .where((element) => element.name == nameOfExam)
      .toList()
      .isNotEmpty;
}
