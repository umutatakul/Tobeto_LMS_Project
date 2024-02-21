import 'package:flutter/material.dart';
import 'package:tobeto_lms_project/constants/paths/paths_of_profile_edit.dart';
import 'package:tobeto_lms_project/data/mock_data.dart';
import 'package:tobeto_lms_project/widgets/profile_edit_widgets/individual_widgets/profile_picture_profile_edit.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/footer_field_profile.dart';

class IndividualInformationTab extends StatelessWidget {
  IndividualInformationTab({Key? key}) : super(key: key);
  final _paths = ProfileEditPaths();
  final _mockData = ProfileInformationData();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        const SizedBox(height: 20),
        ProfilePictureProfileEdit(profileEditPictureUrl: _paths.profileAvatar),
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
            initialValue: _mockData.name,
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
            initialValue: _mockData.surname,
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
            initialValue: _mockData.phoneNumber,
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
            initialValue: _mockData.mail,
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
            initialValue: _mockData.about,
          ),
        ),
        ElevatedButton(onPressed: () {}, child: const Text("Kaydet")),
        FooterFieldProfile(
            backgroundColors: Theme.of(context).colorScheme.inversePrimary)
      ]),
    );
  }
}
