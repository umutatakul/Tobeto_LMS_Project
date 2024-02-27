import 'package:tobeto_lms_project/models/application__screen_model.dart';

abstract class ApplicationState {}

class ApplicationInitialState extends ApplicationState {}

class ApplicationLoadingState extends ApplicationState {}

class ApplicationLoadedState extends ApplicationState {
  ApplicationLoadedState({required this.application});
  final List<ApplicationScreenModel> application;
}

class ApplciationErrorState extends ApplicationState {
  ApplciationErrorState({required this.errorMessage});
  final String errorMessage;
}
