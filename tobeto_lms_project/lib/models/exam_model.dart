import 'package:flutter/material.dart';

class ExamModel {
  ExamModel(
      {required this.title,
      required this.subTitle,
      required this.duration,
      required this.declaration,
      required this.questionPcs,
      required this.examType,
      required this.isExamCompleted,
      required this.headerImage});

  final String title;
  final String subTitle;
  final String duration;
  final String declaration;
  final String questionPcs;
  final String examType;
  final bool isExamCompleted;
  final String headerImage;
}
