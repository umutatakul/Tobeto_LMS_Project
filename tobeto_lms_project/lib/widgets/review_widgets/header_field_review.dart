import 'package:flutter/material.dart';
import 'package:tobeto_lms_project/constants/strings/review_screen_strings.dart';

class HeaderReview extends StatelessWidget {
  const HeaderReview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(ReviewScreenStirngs.titleOne,
        style: Theme.of(context).textTheme.displayMedium,
        textAlign: TextAlign.center);
  }
}
