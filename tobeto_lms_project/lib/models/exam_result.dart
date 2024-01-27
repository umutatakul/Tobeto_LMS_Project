import 'package:tobeto_lms_project/models/course.dart';

class ExamResult {
  ExamResult({required this.name, required this.date, required this.score});
  final String name;
  final double score;
  final DateTime date;
}
