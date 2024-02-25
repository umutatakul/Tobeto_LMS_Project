import 'dart:io';

import 'package:tobeto_lms_project/models/user_model.dart';

abstract class ProfileEvent {}

//------------PROFİL BİLGİLERİNİ GETİR----------

class GetProfileEvent extends ProfileEvent {}

//------------PROFİL BİLGİLERİNİ GÜNCELLE----------

class UpdateProfileEvent extends ProfileEvent {
  UpdateProfileEvent({required this.userModel, required this.photo});
  final UserModel userModel;
  final File? photo;
}
