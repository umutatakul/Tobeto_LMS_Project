import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DenemeSearch extends StatefulWidget {
  DenemeSearch({Key? key}) : super(key: key);
  final TextEditingController _controller = TextEditingController();

  @override
  _DenemeSearchState createState() => _DenemeSearchState();
}

class _DenemeSearchState extends State<DenemeSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Deneme Search"),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(16),
            child: TextField(
              controller: widget._controller,
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  hintText: "Kurs ara",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Colors.pink))),
              onChanged: searchCourse,
            ),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: courseList.length,
                  itemBuilder: (context, index) {
                    final courseCurrent = courseList[index];
                    return CourseCard(course: courseCurrent);
                  }))
        ],
      ),
    );
  }

  void searchCourse(String query) {
    final suggestion = courseList.where((course) {
      final courseName = course.name;
      final input = query.toLowerCase();
      return courseName.contains(input);
    }).toList();

    setState(
      () => courseList = suggestion,
    );
  }
}

class Course {
  final String id;
  final String name;
  final double rating;
  final String author;
  final String imgUrl;

  Course({
    this.imgUrl = "https://img.lovepik.com/element/45008/9232.png_860.png",
    required this.id,
    required this.name,
    this.rating = 4,
    required this.author,
  });
}

//Course information for Catalogue
List<Course> courseList = [
  Course(
      id: "1",
      name: "Dinle, Anla, İfade Et: Etkili İletişim Gelişim Yolculuğu",
      author: "Mehmet Rauf"),
  Course(
      id: "2",
      name: "Python Programlama: Temel İlkeler ve Uygulamalar",
      author: "Ayşe Yılmaz"),
  Course(
      id: "3",
      name: "Veri Analizi ve Görselleştirme: Pandas ve Matplotlib Kılavuzu",
      author: "Can Korkmaz"),
  Course(
      id: "4",
      name: "Web Geliştirme: HTML, CSS ve JavaScript İle Temeller",
      author: "Ali Demir"),
  Course(
      id: "5",
      name: "Yaratıcı Yazma: Hikaye Oluşturma ve Karakter Geliştirme Sanatı",
      author: "Zeynep Arslan"),
  Course(
      id: "6",
      name: "Mantık ve Algoritma: Programlamaya Giriş",
      author: "Eren Yıldırım"),
  Course(
      id: "7",
      name: "Dijital Pazarlama: Stratejiler ve Uygulamalar",
      author: "Selin Kaya"),
  Course(
      id: "8",
      name: "Görsel Sanatlar: Temel Kavramlar ve Teknikler",
      author: "Deniz Ertem"),
  Course(
      id: "9",
      name: "Yabancı Dil Öğrenme: Etkili Stratejiler ve Pratikler",
      author: "Selim Arıkan"),
  Course(
      id: "10",
      name: "Finansal Okuryazarlık: Temel Kavramlar ve Yatırım Stratejileri",
      author: "Aslı Yılmaz"),
  Course(
      id: "11",
      name: "Robotik: Temeller ve Uygulamalar",
      author: "Burak Demirci"),
  Course(
      id: "12",
      name: "Sosyal Medya Yönetimi: İçerik ve Analiz",
      author: "Esra Kocabaş"),
  Course(
      id: "13",
      name: "Mikroekonomi: Temel İlkeler ve Analiz",
      author: "Ahmet Şahin"),
  Course(
      id: "14",
      name: "Veri Tabanı Yönetimi: SQL Temelleri",
      author: "Nihan Yücel"),
  Course(
      id: "15",
      name: "Drama Sanatı: Sahne Performansı ve Yaratıcı İfadeler",
      author: "Cemal Aksoy"),
  Course(
      id: "16",
      name: "Girişimcilik: İş Fikri Geliştirme ve İş Planı Hazırlama",
      author: "Gizem Aydın"),
  Course(
      id: "17",
      name: "Görsel Programlama: Scratch ile Temel Kavramlar",
      author: "Ebru Kaya"),
  Course(
      id: "18",
      name: "Edebiyat Analizi: Klasik Eserlerde Temel Yaklaşımlar",
      author: "Murat Demir"),
  Course(
      id: "19",
      name: "Astronomi: Evrenin Sırlarını Keşfetme",
      author: "Ayşe Güler"),
  Course(
      id: "20",
      name: "Moleküler Biyoloji: Temel Kavramlar ve Laboratuvar Uygulamaları",
      author: "Kaan Yıldız"),
  Course(
      id: "21",
      name: "Sanal Gerçeklik: Temeller ve Uygulamalar",
      author: "Funda Ekmekçi"),
  Course(
      id: "22",
      name: "İş Etik ve Sosyal Sorumluluk: Kurumsal Davranış ve İnsan Hakları",
      author: "Berkay Karadağ"),
  Course(
      id: "23",
      name:
          "Uzaktan Çalışma Becerileri: Verimli ve Etkili Çalışma Stratejileri",
      author: "Zeynep Altın"),
  Course(
      id: "24",
      name: "Bilgisayar Ağları: Temel Kavramlar ve Yapılandırma",
      author: "Umut Demir"),
  Course(
      id: "25",
      name: "Çocuk Gelişimi: Temel İlkeler ve Eğitim Stratejileri",
      author: "Sevim Kaya"),
  Course(
      id: "26",
      name: "Dijital Fotoğrafçılık: Temel Teknikler ve Fotoğraf Düzenleme",
      author: "Cihan Akın"),
  Course(
      id: "27",
      name: "Psikoloji: Temel Kavramlar ve İnsan Davranışı",
      author: "Gülcan Yıldırım"),
  Course(
      id: "28",
      name: "Yazılım Test Otomasyonu: Selenium ve Python",
      author: "Emre Güler"),
  Course(
      id: "29",
      name: "Yiyecek ve Beslenme Bilimi: Temel İlkeler ve Sağlıklı Beslenme",
      author: "Şule Yılmaz"),
  Course(
      id: "30",
      name: "Tarih Analizi: Temel Yaklaşımlar ve Tarih Yazımı",
      author: "Mert Karadağ"),
];

class CourseCard extends StatelessWidget {
  const CourseCard({super.key, required this.course});
  final Course course;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(18),
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          const Color.fromARGB(255, 89, 141, 176).withOpacity(0.5),
          const Color.fromARGB(255, 89, 141, 176).withOpacity(0.9),
        ], begin: Alignment.topRight, end: Alignment.bottomLeft),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            course.name,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Row(children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Image.network(course.imgUrl, height: 100),
            ),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Icon(FontAwesomeIcons.personChalkboard),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Text(
                          course.author,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(color: Colors.white),
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ],
                  ),
                  RatingBar.builder(
                      minRating: 1,
                      initialRating: 3,
                      itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 3,
                          ),
                      onRatingUpdate: (rating) {})
                ],
              ),
            )
          ]),
        ],
      ),
    );
  }
}
