import 'package:tobeto_lms_project/controllers/is_score_there_controlller.dart';
import 'package:tobeto_lms_project/widgets/review_widgets/test_and_result_cards_field.dart';

bool scorePercentVisibilityController(
    List listOfResultScores, String nameOfExam) {
  return isScoreThere(listOfResultScores, nameOfExam);
}