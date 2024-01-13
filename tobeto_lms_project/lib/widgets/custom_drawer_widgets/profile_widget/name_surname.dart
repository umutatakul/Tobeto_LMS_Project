import 'package:flutter/material.dart';
import 'package:tobeto_lms_project/widgets/custom_drawer_widgets/profile_widget/customizable_card_informaiton.dart';

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

class NameSurnameCardProfile extends CustomizableCardMainInformation {
  const NameSurnameCardProfile(
      {super.key,
      super.litleTitle = "Ad Soyad",
      super.bigtext = "Eyüp Sabri",
      required super.icon,
      required this.name,
      required this.surname});

  final String name;
  final String surname;
}
