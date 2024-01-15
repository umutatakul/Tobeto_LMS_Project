import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tobeto_lms_project/models/language.dart';

class LanguageCardProfile extends StatelessWidget {
  const LanguageCardProfile({Key? key, required this.language})
      : super(key: key);
  final Language language;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(language.languageName),
        subtitle: Text(language.languageLevel),
        leading: const Icon(FontAwesomeIcons.globe),
        trailing: const FaIcon(FontAwesomeIcons.houseChimney),
      ),
    );
  }
}
