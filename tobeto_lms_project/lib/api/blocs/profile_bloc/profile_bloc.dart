import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_lms_project/api/blocs/profile_bloc/profile_bloc_event.dart';
import 'package:tobeto_lms_project/api/blocs/profile_bloc/profile_bloc_state.dart';
import 'package:tobeto_lms_project/api/repositories/storage_repository.dart';
import 'package:tobeto_lms_project/api/repositories/user_repository.dart';
import 'package:tobeto_lms_project/models/user_model.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final UserRepository _userRepository;
  final StorageRepository _storageRepository;
  ProfileBloc(this._userRepository, this._storageRepository)
      : super(ProfileInitial()) {
    on<GetProfileEvent>(_getProfile);
    on<UpdateProfileEvent>(_updateProfile);
  }

  //_____________PROFİL GETİRME_______________

  Future<void> _getProfile(
      GetProfileEvent event, Emitter<ProfileState> emit) async {
    emit(ProfileLoading());

    try {
      final user = await _userRepository.readUserFromFirestore(UserModel());
      emit(ProfileLoaded(user: user));
    } catch (e) {
      emit(ProfileError(errorMessage: e.toString()));
    }
  }

  //________________PROFİL GÜNCELLEME______________

  Future<void> _updateProfile(
      UpdateProfileEvent event, Emitter<ProfileState> emit) async {
    emit(ProfileLoading());
    final String url;
    try {
      if (event.photo != null) {
        url = await _storageRepository.uploadPhoto(event.photo!);
        event.userModel.profilePhoto = url;
      }
      await _userRepository.updateUserFromFirestore(event.userModel);
      emit(ProfileUpdated());
    } catch (e) {
      emit(ProfileError(errorMessage: e.toString()));
    }
  }

  //
}
