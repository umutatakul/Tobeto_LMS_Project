import 'package:flutter/material.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/language_card_profile.dart';

class LanguageFieldProfile extends StatelessWidget {
  const LanguageFieldProfile(
      {super.key, required this.title, required this.languageDataList});
  final String title;
  final languageDataList;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      width: double.infinity,
      margin: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Card(
              child: ListTile(
                title: Text(
                  title,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            ),
            for (final selectedLanguage in languageDataList)
              LanguageCardProfile(
                language: selectedLanguage,
              )
          ],
        ),
      ),
    );
  }
}
