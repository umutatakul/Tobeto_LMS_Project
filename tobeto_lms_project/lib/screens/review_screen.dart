import 'package:flutter/material.dart';
import 'package:tobeto_lms_project/widgets/custom_app_bar_widget.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBarWidget(appBarTitle: "Değerlendirmeler"),
      body: Text("Değerlendirmeler"),
    );
  }
}
