import 'package:flutter/material.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/footer_field_profile.dart';

class SkillsTab extends StatefulWidget {
  SkillsTab({Key? key}) : super(key: key);
  String selectedSkill = "Dart";

  @override
  _SkillsTabState createState() => _SkillsTabState();
}

class _SkillsTabState extends State<SkillsTab> {
  @override
  Widget build(BuildContext context) {
    final footerBackgroundColor = Theme.of(context).colorScheme.inversePrimary;

    return SingleChildScrollView(
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          margin: const EdgeInsets.all(12),
          child: DropdownButtonFormField<String>(
            alignment: Alignment.centerLeft,
            items: yetkinlikler
                .map((String currentSchoolLevel) => DropdownMenuItem(
                      value: currentSchoolLevel,
                      child: Text(currentSchoolLevel),
                    ))
                .toList(),
            value: widget.selectedSkill,
            onChanged: (String? newSelect) {
              setState(() {
                widget.selectedSkill = newSelect!;
              });
            },
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.5,
        ),
        ElevatedButton(onPressed: () {}, child: Text("Kaydet")),
        FooterFieldProfile(backgroundColors: footerBackgroundColor)
      ]),
    );
  }
}

List<String> yetkinlikler = [
  'Dart',
  'Java',
  'Python',
  'C#',
  'HTML',
  'CSS',
  'JavaScript',
  'React',
  'Angular',
  'Vue.js',
  'Node.js',
  'Flutter',
  'SQL',
  'MySQL',
  'PostgreSQL',
  'MongoDB',
  'Firebase',
  'Express.js',
  'Django',
  'Flask',
  'Ruby on Rails',
  'Git',
  'SVN',
  'JUnit',
  'Selenium',
  'Jest',
  'XCTest',
  'IDE\'ler (Visual Studio Code, IntelliJ IDEA)',
  'Paket Yöneticileri (npm, pub)',
  'Docker',
  'Algoritmalar ve Veri Yapıları',
  'Veritabanı Tasarımı',
  'Nesne Yönelimli Programlama',
  'Web Güvenliği Temelleri',
  'İyi bir takım oyuncusu olma',
  'İyi iletişim becerileri',
  'Problem çözme yeteneği'
];
