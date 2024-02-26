import 'package:tobeto_lms_project/models/education_course_model.dart';

abstract class EducationCourseState {}

class EducationCourseInitialState extends EducationCourseState {}

class EducationCourseLoadingState extends EducationCourseState {}

class EducationCourseLoadedState extends EducationCourseState {
  EducationCourseLoadedState({
    required this.educationCourses,
  });
  final List<EducationCourseModel> educationCourses;
}

class EducationCourseError extends EducationCourseState {
  String errorMessage;
  EducationCourseError({
    required this.errorMessage,
  });
}
