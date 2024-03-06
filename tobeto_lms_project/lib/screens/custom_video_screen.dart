import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_lms_project/api/blocs/education_course_bloc/education_course_bloc.dart';
import 'package:tobeto_lms_project/api/blocs/education_course_bloc/education_course_state.dart';
import 'package:tobeto_lms_project/widgets/custom_video_player.dart';

class CustomVideoScreen extends StatelessWidget {
  const CustomVideoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<EducationCourseBloc, EducationCourseState>(
        builder: (context, state) {
          if (state is EducationCourseLoadedState) {
            final education = state.educationCourses[0].videoLink;

            return CustomVideoPlayer(videoLink: education!);
          }
          return const Center(
            child: Text("Yöneticiyi arayın"),
          );
        },
      ),
    );
  }
}
