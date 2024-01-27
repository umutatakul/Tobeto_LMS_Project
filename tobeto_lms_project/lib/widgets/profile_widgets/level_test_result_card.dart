import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tobeto_lms_project/models/exam_result.dart';

class LevelTestResultCard extends StatelessWidget {
  const LevelTestResultCard({Key? key, required this.examResult})
      : super(key: key);
  final ExamResult examResult;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          //tek birine container ile genişlik vermem çerçeveye yetti
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Text(
              examResult.name,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Text(DateFormat.yMd().format(examResult.date),
              style: Theme.of(context).textTheme.bodyLarge),
          Text(examResult.score.toString(),
              style: Theme.of(context).textTheme.bodyLarge),
        ],
      ),
    );
  }
}
