import 'package:flutter/material.dart';
import 'package:tobeto_lms_project/constants/colors/colors_of_review_screen.dart';
import 'package:tobeto_lms_project/widgets/review_widgets/custom_container_review.dart';

class ThirdContainer extends StatelessWidget {
  ThirdContainer({super.key});
  final _customColor = ColorsOfReviewScreen();

  @override
  Widget build(BuildContext context) {
    return CustomContainerReview(
      body: const Text(""),
      gradientColorFirst: _customColor.firstContainerBackgroundColor(context),
      titleString: "Kazanım Odaklı Testler",
      bodyString:
          "Dijital gelişim kategorisindeki eğitimlere başlamadan önce konuyla ilgili bilgin ölçülür ve seviyene göre yönlendirilirsin.",
    );
  }
}
