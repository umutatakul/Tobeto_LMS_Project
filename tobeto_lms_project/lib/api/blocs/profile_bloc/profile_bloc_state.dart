// state durumlarını UI da kullanacağız.
// kullandığımız bu state UI ları güncellesin...

// contex.read<ProfileBloc>.add(FetchProfileInfo)

import 'package:tobeto_lms_project/models/user_model.dart';

abstract class ProfileState {}

class ProfileInitial extends ProfileState {
  // profile bilgileri getireceğiz
  // istek atılıyor...
}

class ProfileLoading extends ProfileState {
  // circular progress indicator
}

// loaded
// yüklendi...

class ProfileLoaded extends ProfileState {
  // profile bilgileri getireceğiz
  // ekrana yansıyan kısım
  UserModel user;
  ProfileLoaded({
    required this.user,
  });
}

class ProfileError extends ProfileState {
  // veri yoksa
  String errorMessage;
  ProfileError({
    required this.errorMessage,
  });
}

//Profil Update Durumu

class ProfileUpdated extends ProfileState {}
