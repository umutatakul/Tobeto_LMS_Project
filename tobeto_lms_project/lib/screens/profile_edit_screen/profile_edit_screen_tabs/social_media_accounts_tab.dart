import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tobeto_lms_project/widgets/profile_edit_widgets/social_media_accounts_widgets/social_media_accounts_card_profile_edit.dart';

class SocialMediaAccountsTab extends StatelessWidget {
  const SocialMediaAccountsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        //-------------Instagram-----------------
        SocialMediaAccountsCardProfileEdit(
            iconData: FontAwesomeIcons.instagram,
            iconColor: Colors.red,
            labelText: "Instagram",
            hintText: "https://www.instagram.com/kullanıcıadı/"),

        //-------------------Linkedin----------------------
        SocialMediaAccountsCardProfileEdit(
            iconData: FontAwesomeIcons.linkedinIn,
            iconColor: Colors.blue,
            labelText: "Linkedin",
            hintText: "https://www.linkedin.com/in/kullanıcadı/"),
        SocialMediaAccountsCardProfileEdit(
            iconData: FontAwesomeIcons.github,
            iconColor: Colors.black,
            labelText: "Github",
            hintText: "https://github.com/umutatakul")
      ],
    );
  }
}
