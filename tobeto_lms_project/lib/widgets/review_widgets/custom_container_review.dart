import 'package:flutter/material.dart';
import 'package:tobeto_lms_project/constants/colors/colors_of_review_screen.dart';

class CustomContainerReview extends StatelessWidget {
  CustomContainerReview(
      {Key? key,
      required this.body,
      required this.gradientColorFirst,
      required this.titleString,
      required this.bodyString})
      : super(key: key);
  final Widget body;
  final double borderRadius = 20;
  final double marginValue = 12;
  final Color gradientColorFirst;
  final String titleString;
  final String bodyString;
  final _customColors = ColorsOfReviewScreen();

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      margin: EdgeInsets.all(marginValue),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [gradientColorFirst, gradientColorFirst],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
        border: Border.all(),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(borderRadius),
          bottomRight: Radius.circular(borderRadius),
          topRight: Radius.circular(borderRadius),
        ),
      ),
      child: Column(
        children: [
          //Hepsinde başlık ve colum düzeni var diye buraya koydum
          Text(
            titleString,
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                color: _customColors.containertextColor(context),
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          //Text Alanını da aldım
          Text(bodyString,
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    color: _customColors.containertextColor(context),
                  ),
              textAlign: TextAlign.center),
          //Burası kullancının zorunlu olarak gireceği body alanı
          body,
        ],
      ),
    );
  }
}
