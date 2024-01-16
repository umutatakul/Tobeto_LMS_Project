import 'package:flutter/material.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/customizable_card_informaiton_profile.dart';

// class NameSurnameCardProfile extends StatelessWidget {
//   const NameSurnameCardProfile(
//       {super.key, required this.name, required this.surname});
//   final String name;
//   final String surname;

//   @override
//   Widget build(BuildContext context) {
//     return CustomizableCardMainInformation(
//         litleTitle: name, bigtext: surname, icon: const Icon(Icons.person));
//   }
// }

class NameSurnameCardProfile extends CustomizableCardMainInformationProfile {
  const NameSurnameCardProfile(
      {super.key,
      super.litleTitle = "Ad Soyad",
      required this.name,
      required this.surname})
      : super(
          bigtext: "$name $surname",
          icon: const Icon(Icons.person),
        );

  final String name;
  final String surname;
}
