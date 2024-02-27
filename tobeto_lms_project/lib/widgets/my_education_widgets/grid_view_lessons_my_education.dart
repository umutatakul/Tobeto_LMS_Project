import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_lms_project/api/blocs/education_course_bloc/education_course_bloc.dart';
import 'package:tobeto_lms_project/api/blocs/education_course_bloc/education_course_event.dart';
import 'package:tobeto_lms_project/api/blocs/education_course_bloc/education_course_state.dart';
import 'package:tobeto_lms_project/widgets/my_education_widgets/education_course_card_my_edcuation.dart';

class GridViewLessonsMyEducation extends StatelessWidget {
  const GridViewLessonsMyEducation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EducationCourseBloc, EducationCourseState>(
      builder: (context, state) {
        if (state is EducationCourseInitialState) {
          context.read<EducationCourseBloc>().add(GetEducationCourseEvent());
        }
        if (state is EducationCourseLoadingState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is EducationCourseLoadedState) {
          final educationUser = state.educationCourses;
          return Expanded(
            child: Container(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    //Cardların oranının burdan belirliyoruz
                    childAspectRatio: 4 / 5),
                itemCount: educationUser.length,
                itemBuilder: (context, index) => EducationCourseCardMyEdcuation(
                    course: educationUser[index]),
              ),
            ),
          );
        }
        if (state is EducationCourseError) {
          return Center(
            child: Text(state.errorMessage),
          );
        }

        return const Center(
          child: Text("Beklenmedik Hata"),
        );
      },
    );
  }
}
// Expanded(
//         child: Container(
//           child: GridView.builder(
//             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 2,
//                 //Cardların oranının burdan belirliyoruz
//                 childAspectRatio: 4 / 5),
//             itemCount: educationCourseList.length,
//             itemBuilder: (context, index) => EducationCourseCardMyEdcuation(
//                 course: educationCourseList[index]),
//           ),
//         ),
//       ),