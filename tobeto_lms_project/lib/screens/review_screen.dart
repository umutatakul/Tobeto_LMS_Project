import 'package:flutter/material.dart';
import 'package:tobeto_lms_project/constants/strings/review_screen_strings.dart';
import 'package:tobeto_lms_project/widgets/custom_app_bar_widget.dart';
import 'package:tobeto_lms_project/widgets/custom_drawer.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/footer_field_profile.dart';
import 'package:tobeto_lms_project/widgets/review_widgets/first_container_review_field.dart';
import 'package:tobeto_lms_project/widgets/review_widgets/fourth_container_field_review.dart';
import 'package:tobeto_lms_project/widgets/review_widgets/header_field_review.dart';
import 'package:tobeto_lms_project/widgets/review_widgets/second_container_field_review.dart';
import 'package:tobeto_lms_project/widgets/review_widgets/test_and_result_cards_field.dart';
import 'package:tobeto_lms_project/widgets/review_widgets/third_container_field_review.dart';

class ReviewScreen extends StatelessWidget {
  ReviewScreen({super.key});
  final _strings = ReviewScreenStirngs();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: CustomAppBarWidget(appBarTitle: _strings.appBarTitle),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const HeaderFieldReview(),
                FirstContainerReviewField(),
                SecondContainerFieldReview(),
                TestAndResultCardsField(),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: Text(
                    "Aboneliğe özel değerlendirme araçları için",
                    style: Theme.of(context).textTheme.displayLarge,
                    textAlign: TextAlign.center,
                  ),
                ),
                ThirdContainerFieldReview(),
                const FourthContainerFieldReview(),
                FooterFieldProfile(
                  backgroundColors: Theme.of(context).primaryColor,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
