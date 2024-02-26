import 'package:flutter/material.dart';
import 'package:tobeto_lms_project/data/mock_data.dart';
import 'package:tobeto_lms_project/widgets/my_education_widgets/education_course_card_my_edcuation.dart';

class GridViewLessonsMyEducation extends StatelessWidget {
  const GridViewLessonsMyEducation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              //Cardların oranının burdan belirliyoruz
              childAspectRatio: 4 / 5),
          itemCount: educationCourseList.length,
          itemBuilder: (context, index) => EducationCourseCardMyEdcuation(
              course: educationCourseList[index]),
        ),
      ),
    );
  }
}
