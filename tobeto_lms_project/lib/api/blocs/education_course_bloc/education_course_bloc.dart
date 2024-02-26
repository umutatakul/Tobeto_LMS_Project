import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:tobeto_lms_project/api/blocs/education_course_bloc/education_course_event.dart';
import 'package:tobeto_lms_project/api/blocs/education_course_bloc/education_course_state.dart';
import 'package:tobeto_lms_project/api/repositories/education_course_repository.dart';

class EducationCourseBloc
    extends Bloc<EducationCourseEvent, EducationCourseState> {
  final CourseRepository courseRepository;
  EducationCourseBloc({
    required this.courseRepository,
  }) : super(EducationCourseInitialState()) {
    on<GetEducationCourseEvent>(_onGetCourse);
  }
  void _onGetCourse(
      GetEducationCourseEvent event, Emitter<EducationCourseState> emit) async {
    emit(EducationCourseLoadingState());

    try {
      final course = await courseRepository.getEducationCourse();
      emit(EducationCourseLoadedState(educationCourses: course));
    } catch (e) {
      emit(EducationCourseError(errorMessage: e.toString()));
    }
  }
}
