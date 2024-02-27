import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_lms_project/api/blocs/application_bloc/application_event.dart';
import 'package:tobeto_lms_project/api/blocs/application_bloc/application_state.dart';
import 'package:tobeto_lms_project/api/repositories/application_repository.dart';

class ApplicationBloc extends Bloc<ApplicationEvent, ApplicationState> {
  final ApplicationRepository applicationRepository;
  ApplicationBloc({required this.applicationRepository})
      : super(ApplicationInitialState()) {
    on<GetApplicationEvent>(_onGetApplication);
  }
  void _onGetApplication(
      GetApplicationEvent event, Emitter<ApplicationState> emit) async {
    emit(ApplicationLoadingState());
    try {
      final application = await applicationRepository.getApplication();
      emit(ApplicationLoadedState(application: application));
    } catch (e) {
      emit(ApplciationErrorState(errorMessage: e.toString()));
    }
  }
}
