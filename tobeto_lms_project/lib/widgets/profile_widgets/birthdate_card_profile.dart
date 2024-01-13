import 'package:flutter/material.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/customizable_card_informaiton.dart';

class BirthdateCardProfile extends CustomizableCardMainInformation {
  const BirthdateCardProfile({
    super.key,
    required this.birthdate,
  }) : super(
            litleTitle: "Doğum Tarihi",
            bigtext: birthdate,
            icon: const Icon(Icons.date_range_sharp));
  final String birthdate;
}
