import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:tobeto_lms_project/constants/colors/colors_of_review_screen.dart';

class ExamCard extends StatelessWidget {
  ExamCard(
      {Key? key,
      required this.examName,
      this.scorePercent,
      required this.scorePercentVisibility,
      required this.isScoreNotEmpty})
      : super(key: key);
  final _colors = ColorsOfReviewScreen();
  final double _padding = 8;
  final double _margin = 12;
  final bool scorePercentVisibility;
  final double? scorePercent;
  final String examName;
  final bool isScoreNotEmpty;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(_padding),
      margin: EdgeInsets.all(_margin),
      decoration: BoxDecoration(
          color: _colors.firstContainerBackgroundColor(context),
          border: Border.all(),
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Visibility(
            visible: scorePercentVisibility,
            child: CircularPercentIndicator(
              radius: 20.0,
              lineWidth: 5.0,
              percent: (scorePercent ?? 0) * .01,
              center: Text(
                "${scorePercent}%",
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: _colors.containertextColor(context)),
              ),
              progressColor: Colors.green,
            ),
          ),
          Text(
            examName,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: _colors.containertextColor(context),
                ),
          ),
          isScoreNotEmpty
              ? ElevatedButton(
                  onPressed: () {}, child: const Text("Raporu görüntüle"))
              : ElevatedButton(onPressed: () {}, child: const Text("Başla"))
        ],
      ),
    );
  }
}
