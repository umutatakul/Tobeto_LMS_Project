import 'package:flutter/material.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/customizable_card_informaiton_profile.dart';

class BirthdateCardProfile extends CustomizableCardMainInformationProfile {
  const BirthdateCardProfile({
    super.key,
    required this.birthdate,
  }) : super(
            litleTitle: "Doğum Tarihi",
            bigtext: "GG.AA.YYYY",
            // birthdate,
            icon: const Icon(Icons.date_range_sharp));
  final String birthdate;
}
