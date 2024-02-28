import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_lms_project/api/blocs/announce_bloc/announce_event.dart';
import 'package:tobeto_lms_project/api/blocs/announce_bloc/announce_state.dart';
import 'package:tobeto_lms_project/api/repositories/announce_repository.dart';

class AnnounceBloc extends Bloc<AnnounceEvent, AnnounceState> {
  final AnnounceRepository announceRepository;

  AnnounceBloc({required this.announceRepository})
      : super(AnnounceInitialState()) {
    on<GetAnnounceEvent>(_onGetAnnounce);
  }
  void _onGetAnnounce(
      GetAnnounceEvent event, Emitter<AnnounceState> emit) async {
    emit(AnnounceLoadingState());
    try {
      final announce = await announceRepository.getAnnounce();
      emit(AnnounceLoadedState(announcesList: announce));
    } catch (e) {
      emit(AnnounceErrorState(errorMessage: e.toString()));
    }
  }
}
