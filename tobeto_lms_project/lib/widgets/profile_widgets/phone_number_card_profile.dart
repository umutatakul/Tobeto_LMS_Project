import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/customizable_card_informaiton.dart';

class PhoneNumberCardProfile extends CustomizableCardMainInformation {
  const PhoneNumberCardProfile({
    super.key,
    required this.telephone,
  }) : super(
            litleTitle: "Telefon Numaranız",
            bigtext: telephone,
            icon: const Icon(FontAwesomeIcons.phoneFlip));
  final String telephone;
}
