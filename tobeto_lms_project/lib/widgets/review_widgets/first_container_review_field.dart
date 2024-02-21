import 'package:flutter/material.dart';
import 'package:tobeto_lms_project/constants/colors/colors_of_review_screen.dart';
import 'package:tobeto_lms_project/constants/strings/review_screen_strings.dart';
import 'package:tobeto_lms_project/widgets/review_widgets/custom_container_review.dart';

class FirstContainerReviewField extends StatelessWidget {
  FirstContainerReviewField({Key? key}) : super(key: key);

  final _customColors = ColorsOfReviewScreen();
  final _strings = ReviewScreenStirngs();

  @override
  Widget build(BuildContext context) {
    return CustomContainerReview(
      gradientColorFirst: _customColors.firstContainerBackgroundColor(context),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {}, child: const Text("Raporu görüntüle"))
          ],
        ),
      ),
      titleString: _strings.titleTwo,
      bodyString: _strings.subStringOne,
    );
  }
}
