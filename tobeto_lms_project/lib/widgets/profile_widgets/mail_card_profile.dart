import 'package:flutter/material.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/customizable_card_informaiton.dart';

class MailCardProfile extends CustomizableCardMainInformation {
  MailCardProfile({
    required this.mail,
  }) : super(
          bigtext: mail,
          icon: const Icon(Icons.mail_lock_outlined),
          litleTitle: "E-posta Adresi",
        );
  final String mail;
}
