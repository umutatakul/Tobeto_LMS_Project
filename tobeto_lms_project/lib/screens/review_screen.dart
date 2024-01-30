import 'package:flutter/material.dart';
import 'package:tobeto_lms_project/constants/colors/colors_of_review_screen.dart';
import 'package:tobeto_lms_project/constants/strings/review_screen_strings.dart';
import 'package:tobeto_lms_project/widgets/custom_app_bar_widget.dart';
import 'package:tobeto_lms_project/widgets/custom_drawer.dart';
import 'package:tobeto_lms_project/widgets/review_widgets/custom_container_review.dart';
import 'package:tobeto_lms_project/widgets/review_widgets/header_field_review.dart';

class ReviewScreen extends StatelessWidget {
  ReviewScreen({super.key});
  final _customColors = ColorsOfReviewScreen();
  final _strings = ReviewScreenStirngs();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: const CustomAppBarWidget(appBarTitle: "Değerlendirmeler"),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                HeaderReview(),
                CustomContainerReview(
                  backgroundColor:
                      _customColors.firstContainerBackgroundColor(context),
                  body: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Text(
                          _strings.titleTwo,
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge!
                              .copyWith(
                                  color:
                                      _customColors.containertextColor(context),
                                  fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(_strings.subStringOne,
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium!
                                .copyWith(
                                  color:
                                      _customColors.containertextColor(context),
                                ),
                            textAlign: TextAlign.center),
                        ElevatedButton(
                            onPressed: () {}, child: Text("Raporu görümntüle"))
                      ],
                    ),
                  ),
                ),
                Text("Değerlendirmeler"),
                Text("Değerlendirmeler"),
                Text("Değerlendirmeler"),
                Text("Değerlendirmeler"),
                Text("Değerlendirmeler"),
                Text("Değerlendirmeler"),
                Text("Değerlendirmeler"),
                Text("Değerlendirmeler"),
                Text("Değerlendirmeler"),
                Text("Değerlendirmeler"),
                Text("Değerlendirmeler"),
                Text("Değerlendirmeler"),
                Text("Değerlendirmeler"),
                Text("Değerlendirmeler"),
                Text("Değerlendirmeler"),
                Text("Değerlendirmeler"),
                Text("Değerlendirmeler"),
                Text("Değerlendirmeler"),
                Text("Değerlendirmeler"),
                Text("Değerlendirmeler"),
                Text("Değerlendirmeler"),
                Text("Değerlendirmeler"),
                Text("Değerlendirmeler"),
                Text("Değerlendirmeler"),
                Text("Değerlendirmeler"),
                Text("Değerlendirmeler"),
                Text("Değerlendirmeler"),
                Text("Değerlendirmeler"),
                Text("Değerlendirmeler"),
                Text("Değerlendirmeler"),
                Text("Değerlendirmeler"),
                Text("Değerlendirmeler"),
                Text("Değerlendirmeler"),
                Text("Değerlendirmeler"),
                Text("Değerlendirmeler"),
                Text("Değerlendirmeler"),
                Text("Değerlendirmeler"),
                Text("Değerlendirmeler"),
                Text("Değerlendirmeler"),
                Text("Değerlendirmeler"),
                Text("Değerlendirmeler"),
                Text("Değerlendirmeler"),
                Text("Değerlendirmeler"),
                Text("Değerlendirmeler"),
                Text("Değerlendirmeler"),
                Text("Değerlendirmeler1"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
