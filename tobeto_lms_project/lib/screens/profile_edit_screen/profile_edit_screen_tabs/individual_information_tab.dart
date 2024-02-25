import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tobeto_lms_project/api/blocs/profile_bloc/profile_bloc.dart';
import 'package:tobeto_lms_project/api/blocs/profile_bloc/profile_bloc_event.dart';
import 'package:tobeto_lms_project/api/blocs/profile_bloc/profile_bloc_state.dart';
import 'package:tobeto_lms_project/constants/paths/paths_of_profile_edit.dart';
import 'package:tobeto_lms_project/data/mock_data.dart';
import 'package:tobeto_lms_project/models/user_model.dart';
import 'package:tobeto_lms_project/widgets/profile_edit_widgets/individual_widgets/profile_picture_profile_edit.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/footer_field_profile.dart';

class IndividualInformationTab extends StatefulWidget {
  IndividualInformationTab({Key? key}) : super(key: key);

  @override
  State<IndividualInformationTab> createState() =>
      _IndividualInformationTabState();
}

class _IndividualInformationTabState extends State<IndividualInformationTab> {
  final ImagePicker _imagePicker = ImagePicker();
  File? _selectedPhoto;

  Future photoPick() async {
    //Galeri yolu (path) beliritiliyor
    final image = await _imagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (image != null) {
        _selectedPhoto = File(image.path);
      }
    });
  }

  final _paths = ProfileEditPaths();

  //final _mockData = ProfileInformationData();
  final TextEditingController _nameControlller = TextEditingController();

  final TextEditingController _surnameControlller = TextEditingController();

  final TextEditingController _phoneControlller = TextEditingController();

  final TextEditingController _mailControlller = TextEditingController();

  final TextEditingController _aboutControlller = TextEditingController();

  // @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        if (state is ProfileInitial || state is ProfileUpdated) {
          context.read<ProfileBloc>().add(GetProfileEvent());
        }
        if (state is ProfileLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is ProfileLoaded) {
          UserModel user = state.user;
          _nameControlller.text = user.name ?? "";
          _surnameControlller.text = user.surname ?? "";
          _phoneControlller.text = user.phone ?? "";
          _mailControlller.text = user.email ?? "";
          _aboutControlller.text = user.about ?? "";

          return SingleChildScrollView(
            child: Column(children: [
              const SizedBox(height: 20),
              //-----------PROFİL RESMİ DÜZENLEME------------
              //ProfilePictureProfileEdit(),
              InkWell(
                onTap: () => photoPick(),
                child: Container(
                    child: _selectedPhoto != null
                        ? CircleAvatar(
                            radius: 80,
                            backgroundImage: FileImage(_selectedPhoto!),
                            child: Container(
                              alignment: Alignment.bottomRight,
                              child: FloatingActionButton.small(
                                onPressed: () {
                                  photoPick();
                                },
                                child: const Icon(
                                  Icons.add,
                                ),
                              ),
                            ),
                          )
                        : user.profilePhoto != null
                            ? CircleAvatar(
                                radius: 80,
                                foregroundImage:
                                    NetworkImage(user.profilePhoto!))
                            : const Image(
                                image: NetworkImage(
                                "https://www.habername.com/d/news/127.jpg",
                              ))),
              ),
              //----AD-------
              Container(
                margin: const EdgeInsets.all(12),
                child: TextFormField(
                  decoration: const InputDecoration(
                      label: Text("Adınız *"),
                      // labelText: "isim",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)))),
                  keyboardType: TextInputType.name,
                  //initialValue: _mockData.name,
                  controller: _nameControlller,
                ),
              ),
              //----SOYAD-------
              Container(
                margin: const EdgeInsets.all(12),
                child: TextFormField(
                  decoration: const InputDecoration(
                      label: Text("Soyadınız *"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)))),
                  keyboardType: TextInputType.name,
                  //initialValue: _mockData.surname,
                  controller: _surnameControlller,
                ),
              ),
              //----TELEFON NUMARASI  -------
              Container(
                margin: const EdgeInsets.all(12),
                child: TextFormField(
                  decoration: const InputDecoration(
                      label: Text("Telefon Numaranız *"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)))),
                  keyboardType: TextInputType.phone,
                  //initialValue: _mockData.phoneNumber,
                  controller: _phoneControlller,
                ),
              ),
              //----E-POSTA  -------
              Container(
                margin: const EdgeInsets.all(12),
                child: TextFormField(
                  decoration: const InputDecoration(
                      label: Text("E-Posta Adresi *"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)))),
                  keyboardType: TextInputType.emailAddress,
                  //initialValue: _mockData.mail,
                  controller: _mailControlller,
                ),
              ),
              //---- HAKKINDA  -------
              Container(
                margin: const EdgeInsets.all(12),
                child: TextFormField(
                  decoration: const InputDecoration(
                      label: Text("Hakkımda *"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)))),
                  keyboardType: TextInputType.multiline,
                  minLines: 7,
                  maxLines: null,
                  //initialValue: _mockData.about,
                  controller: _aboutControlller,
                ),
              ),

              //___________KAYDET BUTONU__________
              ElevatedButton(
                  onPressed: () {
                    UserModel user = UserModel(
                        name: _nameControlller.text.trim(),
                        surname: _surnameControlller.text.trim(),
                        phone: _phoneControlller.text.trim(),
                        email: _mailControlller.text.trim(),
                        about: _aboutControlller.text.trim());

                    context.read<ProfileBloc>().add(UpdateProfileEvent(
                        userModel: user, photo: _selectedPhoto));
                  },
                  child: const Text("Kaydet")),
              FooterFieldProfile(
                  backgroundColors:
                      Theme.of(context).colorScheme.inversePrimary)
            ]),
          );
        }
        if (state is ProfileError) {
          return Center(
            child: Text(state.errorMessage),
          );
        }

        return const Center(
          child: Text("Bilinmedik hata..."),
        );
      },
    );
  }
}
