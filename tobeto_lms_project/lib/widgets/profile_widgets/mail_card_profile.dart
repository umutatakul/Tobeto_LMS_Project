import 'package:flutter/material.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/customizable_card_informaiton_profile.dart';

class MailCardProfile extends CustomizableCardMainInformationProfile {
  const MailCardProfile({
    super.key,
    required this.mail,
  }) : super(
          bigtext: mail,
          icon: const Icon(Icons.mail_outline),
          litleTitle: "E-posta Adresi",
        );
  final String mail;
}
