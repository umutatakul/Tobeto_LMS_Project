import 'package:flutter/material.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/footer_field_profile.dart';

class EducationTab extends StatefulWidget {
  EducationTab({Key? key}) : super(key: key);
  String selectedSchool = "Lise";
  bool isStillWork = false;

  @override
  _EducationTabState createState() => _EducationTabState();
}

class _EducationTabState extends State<EducationTab> {
  _checkBoxChange(bool newValue) {
    setState(() {
      widget.isStillWork = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    final footerBackgroundColor = Theme.of(context).colorScheme.inversePrimary;
    return SingleChildScrollView(
        child: Column(children: [
      Container(
        margin: const EdgeInsets.all(12),
        child: DropdownButtonFormField<String>(
          alignment: Alignment.centerLeft,
          items: schoolLevels
              .map((String currentSchoolLevel) => DropdownMenuItem(
                    value: currentSchoolLevel,
                    child: Text(currentSchoolLevel),
                  ))
              .toList(),
          value: widget.selectedSchool,
          onChanged: (String? newSelect) {
            setState(() {
              widget.selectedSchool = newSelect!;
            });
          },
        ),
      ),
      //----OKUL-------
      Container(
        margin: const EdgeInsets.all(12),
        child: TextFormField(
          decoration: const InputDecoration(
              label: Text("Okul *"),
              hintText: "Dumlupınar Üniversitesi,Saint Benoit...",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)))),
          keyboardType: TextInputType.name,
        ),
      ),
      //-----------BÖLÜM---------
      Container(
        margin: const EdgeInsets.all(12),
        child: TextFormField(
          decoration: const InputDecoration(
              label: Text("Bölüm *"),
              hintText: "Fen Bölümü, Makina Mühendisliği",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)))),
          keyboardType: TextInputType.name,
        ),
      ),
      //------- Okul Başlangıcı --------
      //TODO Date Picker ekle
      Container(
        margin: const EdgeInsets.all(12),
        child: TextFormField(
          decoration: const InputDecoration(
              hintText: "gg.aa.yyyy",
              label: Text("Okul Başlangıcı  *"),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)))),
          keyboardType: TextInputType.datetime,
        ),
      ),
      //-------Mezuniyet --------
      //TODO Date Picker ekle
      Container(
        margin: const EdgeInsets.all(12),
        child: TextFormField(
          decoration: const InputDecoration(
              hintText: "gg.aa.yyyy",
              label: Text("Mezuniyet Tarihi  *"),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)))),
          keyboardType: TextInputType.datetime,
        ),
      ),
      //TODO checkBox'u derle topla çok dağınık oldu

      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Text(
          "Okul devam ediyor",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Checkbox(
          value: widget.isStillWork,
          onChanged: (newValue) {
            _checkBoxChange(newValue!);
          },
        ),
      ]),
      ElevatedButton(onPressed: () {}, child: Text("Kaydet")),
      Text("Okul bilkerini buda card ile oluştur"),
      FooterFieldProfile(backgroundColors: footerBackgroundColor)
    ]));
  }
}

List<String> schoolLevels = [
  "Lise",
  "Önlisans",
  "Lisans",
  "Yüksek Lisans",
  "Doktora"
];
