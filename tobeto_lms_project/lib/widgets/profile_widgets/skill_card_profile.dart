import 'package:flutter/material.dart';
import 'package:tobeto_lms_project/models/skill.dart';

class SkillCardProfile extends StatelessWidget {
  const SkillCardProfile({super.key, required this.skill});
  final Skill skill;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        subtitle: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(skill.skillName,
              style: Theme.of(context)
                  .textTheme
                  .displayMedium!
                  .copyWith(fontSize: 22)),
        ),
      ),
    );
  }
}
