import 'package:flutter/material.dart';
import 'package:tobeto_lms_project/constants/colors/colors_of_review_screen.dart';
import 'package:tobeto_lms_project/widgets/review_widgets/custom_container_review.dart';

class FourthContainerFieldReview extends StatelessWidget {
  const FourthContainerFieldReview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomContainerReview(
      titleString: "Huawei Talent Interview Teknik Bilgi Sınavı*",
      bodyString:
          "Sertifika alabilmen için, eğitim yolculuğunun sonunda teknik yetkinliklerin ve kod bilgin ölçülür. 4400+ soru | 30+ programlama dili 4 zorluk seviyesi",
      body: Text("*Türkiye Ar-Ge Merkezi tarafından tasarlanmıştır"),
      gradientColorFirst:
          ColorsOfReviewScreen().firstContainerBackgroundColor(context),
    );
  }
}
