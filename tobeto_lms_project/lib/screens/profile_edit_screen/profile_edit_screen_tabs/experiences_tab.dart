import 'package:flutter/material.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/footer_field_profile.dart';

class ExperiencesTab extends StatefulWidget {
  ExperiencesTab({Key? key}) : super(key: key);
  String selectedCity = "İstanbul";
  bool isStillWork = false;

  @override
  _ExperiencesTabState createState() => _ExperiencesTabState();
}

class _ExperiencesTabState extends State<ExperiencesTab> {
  _checkBoxChange(bool newValue) {
    setState(() {
      widget.isStillWork = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        //------Company Name---------
        Container(
          margin: const EdgeInsets.all(12),
          child: TextFormField(
            decoration: const InputDecoration(
                hintText: "Office 365",
                label: Text("Kurum Adı *"),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)))),
          ),
        ),
        //-------Position , Tittle --------
        Container(
          margin: const EdgeInsets.all(12),
          child: TextFormField(
            decoration: const InputDecoration(
                hintText: "Front End Developer",
                label: Text("Pozisyon *"),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)))),
          ),
        ),
        //-------Sektör --------
        Container(
          margin: const EdgeInsets.all(12),
          child: TextFormField(
            decoration: const InputDecoration(
                hintText: "Yazılım",
                label: Text("Sektör  *"),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)))),
          ),
        ),
        //-------Şehir --------
        Container(
          margin: const EdgeInsets.all(12),
          child: DropdownButtonFormField<String>(
            alignment: Alignment.centerLeft,
            items: sehirler
                .map((String currentCity) => DropdownMenuItem(
                      value: currentCity,
                      child: Text(currentCity),
                    ))
                .toList(),
            value: widget.selectedCity,
            onChanged: (String? newSelect) {
              setState(() {
                widget.selectedCity = newSelect!;
              });
            },
          ),
        ),
        //-------İş başlangıcı --------
        //TODO Date Picker ekle
        Container(
          margin: const EdgeInsets.all(12),
          child: TextFormField(
            decoration: const InputDecoration(
                hintText: "gg.aa.yyyy",
                label: Text("İş Başlangıcı  *"),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)))),
            keyboardType: TextInputType.datetime,
          ),
        ),
        //-------İş İş bitişi --------
        //TODO Date Picker ekle
        Container(
          margin: const EdgeInsets.all(12),
          child: TextFormField(
            decoration: const InputDecoration(
                hintText: "gg.aa.yyyy",
                label: Text("İş Bitişi  *"),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)))),
            keyboardType: TextInputType.datetime,
          ),
        ),

        //TODO checkBoxu derle topla çok dağınık oldı

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Çalışmaya Devam Ediyorum",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Checkbox(
              value: widget.isStillWork,
              onChanged: (newValue) {
                _checkBoxChange(newValue!);
              },
            ),
          ],
        ),
        //-------İş açıklaması --------
        Container(
          margin: const EdgeInsets.all(12),
          child: TextFormField(
            decoration: InputDecoration(
                labelText: "İş açıklaması giriniz",
                // label: Text(
                //   "İş Açıklaması*",
                //   textAlign: TextAlign.left,
                // ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)))),
            minLines: 5,
            maxLines: 6,
          ),
        ),
        ElevatedButton(onPressed: () {}, child: Text("Kaydet")),

        Text("Tecrübeleri buraya kart oluşturup sırala"),
        FooterFieldProfile(
            backgroundColors: Theme.of(context).colorScheme.inversePrimary)
      ]),
    );
  }
}

List<String> sehirler = [
  "Adana",
  "Adıyaman",
  "Afyon",
  "Ağrı",
  "Amasya",
  "Ankara",
  "Antalya",
  "Artvin",
  "Aydın",
  "Balıkesir",
  "Bilecik",
  "Bingöl",
  "Bitlis",
  "Bolu",
  "Burdur",
  "Bursa",
  "Çanakkale",
  "Çankırı",
  "Çorum",
  "Denizli",
  "Diyarbakır",
  "Edirne",
  "Elazığ",
  "Erzincan",
  "Erzurum",
  "Eskişehir",
  "Gaziantep",
  "Giresun",
  "Gümüşhane",
  "Hakkari",
  "Hatay",
  "Isparta",
  "İçel (Mersin)",
  "İstanbul",
  "İzmir",
  "Kars",
  "Kastamonu",
  "Kayseri",
  "Kırklareli",
  "Kırşehir",
  "Kocaeli",
  "Konya",
  "Kütahya",
  "Malatya",
  "Manisa",
  "Kahramanmaraş",
  "Mardin",
  "Muğla",
  "Muş",
  "Nevşehir",
  "Niğde",
  "Ordu",
  "Rize",
  "Sakarya",
  "Samsun",
  "Siirt",
  "Sinop",
  "Sivas",
  "Tekirdağ",
  "Tokat",
  "Trabzon",
  "Tunceli",
  "Şanlıurfa",
  "Uşak",
  "Van",
  "Yozgat",
  "Zonguldak",
  "Aksaray",
  "Bayburt",
  "Karaman",
  "Kırıkkale",
  "Batman",
  "Şırnak",
  "Bartın",
  "Ardahan",
  "Iğdır",
  "Yalova",
  "Karabük",
  "Kilis",
  "Osmaniye",
  "Düzce"
];
