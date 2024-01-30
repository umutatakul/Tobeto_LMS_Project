import 'package:flutter/material.dart';
import 'package:tobeto_lms_project/constants/colors/colors_of_review_screen.dart';
import 'package:tobeto_lms_project/constants/strings/review_screen_strings.dart';
import 'package:tobeto_lms_project/widgets/review_widgets/custom_container_review.dart';

class SecondContainerField extends StatelessWidget {
  SecondContainerField({Key? key}) : super(key: key);
  final _strings = ReviewScreenStirngs();
  final _colors = ColorsOfReviewScreen();

  @override
  Widget build(BuildContext context) {
    return CustomContainerReview(
      body: const Text("Başlık"),
      gradientColorFirst: _colors.firstContainerBackgroundColor(context),
      titleString: 'Yazılımda Başarı Testi',
      bodyString: "Girilecek",
    );
  }
}
