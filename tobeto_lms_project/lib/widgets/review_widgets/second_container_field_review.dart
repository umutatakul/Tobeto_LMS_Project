import 'package:flutter/material.dart';
import 'package:tobeto_lms_project/constants/colors/colors_of_review_screen.dart';
import 'package:tobeto_lms_project/widgets/review_widgets/custom_container_review.dart';

class SecondContainerFieldReview extends StatelessWidget {
  SecondContainerFieldReview({Key? key}) : super(key: key);
  final _colors = ColorsOfReviewScreen();

  @override
  Widget build(BuildContext context) {
    return CustomContainerReview(
      body: Text(
        "↓↓↓↓↓",
        style: Theme.of(context).textTheme.displaySmall!.copyWith(
            color: ColorsOfReviewScreen().containertextColor(context)),
      ),
      gradientColorFirst: _colors.firstContainerBackgroundColor(context),
      titleString: 'Yazılımda Başarı Testi',
      bodyString: "Çoktan seçmeli sorular ile teknik bilgini test et.",
    );
  }
}
