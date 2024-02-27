import 'package:flutter/material.dart';

import 'package:tobeto_lms_project/models/education_course_model.dart';
import 'package:tobeto_lms_project/widgets/custom_app_bar_widget.dart';
import 'package:tobeto_lms_project/widgets/custom_bottom_navigation_bar.dart';
import 'package:tobeto_lms_project/widgets/custom_drawer.dart';
import 'package:tobeto_lms_project/widgets/my_education_widgets/grid_view_lessons_my_education.dart';
import 'package:tobeto_lms_project/widgets/my_education_widgets/header_field_my_education.dart';
import 'package:tobeto_lms_project/widgets/my_education_widgets/name_field_my_education.dart';
import 'package:tobeto_lms_project/widgets/my_education_widgets/search_field_my_education.dart';

class MyEducationsScreen extends StatelessWidget {
  const MyEducationsScreen({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBarWidget(appBarTitle: "Eğitimlerim"),
      drawer: CustomDrawer(),
      body: const Column(
        children: [
          NameFieldMyEducation(),
          SearchFieldMyEducation(),
          HeaderFieldMyEducation(),
          //TODO Header ı da girdview ile hareket edicek şekilde değiştir
          GridViewLessonsMyEducation(),
        ],
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
