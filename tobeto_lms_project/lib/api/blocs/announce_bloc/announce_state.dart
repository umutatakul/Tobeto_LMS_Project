import 'package:tobeto_lms_project/models/announce_model.dart';

abstract class AnnounceState {}

class AnnounceInitialState extends AnnounceState {}

class AnnounceLoadingState extends AnnounceState {}

class AnnounceLoadedState extends AnnounceState {
  AnnounceLoadedState({required this.announcesList});
  final List<AnnounceModel> announcesList;
}

class AnnounceErrorState extends AnnounceState {
  AnnounceErrorState({required this.errorMessage});
  final String errorMessage;
}
