import 'package:flutter/material.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/skill_card_profile.dart';

class SkillsFieldProfile extends StatelessWidget {
  const SkillsFieldProfile({
    Key? key,
    required this.title,
    required this.skillDataList,
  }) : super(key: key);

  final String title;
  final List skillDataList;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      width: double.infinity,
      margin: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        //color: Colors.white,
        color: Theme.of(context).colorScheme.background,
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
            for (final selectedSkill in skillDataList)
              SkillCardProfile(skill: selectedSkill)
          ],
        ),
      ),
    );
  }
}
