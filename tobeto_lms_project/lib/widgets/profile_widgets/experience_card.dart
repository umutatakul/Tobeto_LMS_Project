import 'package:flutter/material.dart';

class ExperienceCard extends StatelessWidget {
  const ExperienceCard(
      {Key? key,
      this.years,
      this.companyOrSchoolName,
      this.sectionOrDepartmant})
      : super(
          key: key,
        );
  final String? years;
  final String? companyOrSchoolName;
  final String? sectionOrDepartmant;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.onInverseSurface,
      child: ListTile(
        title: Text(years ?? "Seneler"),
        subtitle: Text(
            "${sectionOrDepartmant ?? "Bölüm ya da Departman adı"} \n${companyOrSchoolName ?? "Okul ya da firma adı"}"),
        isThreeLine: true,
      ),
    );
  }
}
