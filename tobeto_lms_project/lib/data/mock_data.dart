import 'package:flutter/material.dart';
import 'package:tobeto_lms_project/models/catalogue_course_model.dart';
import 'package:tobeto_lms_project/models/education_course_model.dart';
import 'package:tobeto_lms_project/models/exam_result.dart';
import 'package:tobeto_lms_project/models/language.dart';
import 'package:tobeto_lms_project/models/skill.dart';

//Profile information  data
class ProfileInformationData {
  final String profilePictureLink =
      "https://pbs.twimg.com/profile_images/1681954178195652609/H44jVFCp_400x400.jpg";

  final String name = "Eyüp Sabri";
  final String surname = "Esenkal";
  final birthdate = "05.05.1789";
  final mail = "eyupsabrie79@hotmail.com";
  final phoneNumber = "+904440375";
  final about =
      "Malulen Emekli Cami İmamı • İlim Yayma Cemiyeti Eşbaşkanı • Ateizm Derneği Bşk. Yardımcısı • Yıpranmış Saçlar Uzmanı • Kısa Muska Yazarı";
  final skills = [
    Skill(skillName: "Kotlin"),
    Skill(skillName: "Python"),
    Skill(skillName: "Excel"),
    Skill(skillName: "English"),
  ];
  final languages = [
    Language(languageName: "Türkçe", languageLevel: "Main"),
    Language(languageName: "İngilizce", languageLevel: "B1"),
    Language(languageName: "Almanca", languageLevel: "A2"),
    Language(languageName: "Fransızca", languageLevel: "A1"),
  ];
  //Tobeto başarılarım modeli

  //<Kurs adı, skor>
  final Map<String, double> succesDataMap = {
    "Yeni dünyaya hazırlanıyorum": 4.2,
    "Profesyonel duruşumu geliştiriyorum": 4.4,
    "Kendimi tanıyor ve yönetiyorum": 4.5,
    "Yaratıcı ve doğru çözümler geliştiriyorum": 4,
    "Kendimi sürekli geliştiriyorumG": 4.8,
    "Başkaları ile birlikte çalışıyorum": 4.1,
    "Sonuç ve başarı odaklıyım": 4.2,
  };
  //<Kurs adı, renk (hexCode)>
  final Map<String, Color> succesDataColorMap = {
    "Yeni dünyaya hazırlanıyorum": const Color(0xFF85A0A9),
    "Profesyonel duruşumu geliştiriyorum": const Color(0xFF217925),
    "Kendimi tanıyor ve yönetiyorum": const Color(0xFFEEC272),
    "Yaratıcı ve doğru çözümler geliştiriyorum": const Color(0xFF6667AB),
    "Kendimi sürekli geliştiriyorumG": const Color(0xFFE288B6),
    "Başkaları ile birlikte çalışıyorum": const Color(0xFFD77E6F),
    "Sonuç ve başarı odaklıyım": const Color(0xFFD75078),
  };

  //Exam Results for ExamResults

  List<ExamResult> resultsList = [
    ExamResult(name: "Front End", date: DateTime(2023, 10, 21), score: 80.00),
    ExamResult(name: "Full Stack", date: DateTime(2023, 10, 21), score: 48),
    ExamResult(
        name: "Herkes için Kodlama 1B Değerlendirme Sınavı",
        date: DateTime(2023, 10, 21),
        score: 80),
    ExamResult(name: "Back End", date: DateTime(2023, 10, 21), score: 24),
  ];
  List badgesList = [
    "https://tobeto.s3.cloud.ngn.com.tr/45_14110cb69f.jpg",
    "https://tobeto.s3.cloud.ngn.com.tr/47_556f510dd4.jpg",
    "https://tobeto.s3.cloud.ngn.com.tr/54_791b0b0a35.jpg",
    "https://tobeto.s3.cloud.ngn.com.tr/53_dbd6006382.jpg"
  ];
}

//-------------- KATALOG İÇİN OLAN EĞİTİMLER------------------
//Course information for Catalogue
List<CatalogueCourseModel> courseList = [
  CatalogueCourseModel(
      id: "1",
      name: "Dinle, Anla, İfade Et: Etkili İletişim Gelişim Yolculuğu",
      author: "Mehmet Rauf"),
  CatalogueCourseModel(
      id: "2",
      name: "Python Programlama: Temel İlkeler ve Uygulamalar",
      author: "Ayşe Yılmaz"),
  CatalogueCourseModel(
      id: "3",
      name: "Veri Analizi ve Görselleştirme: Pandas ve Matplotlib Kılavuzu",
      author: "Can Korkmaz"),
  CatalogueCourseModel(
      id: "4",
      name: "Web Geliştirme: HTML, CSS ve JavaScript İle Temeller",
      author: "Ali Demir"),
  CatalogueCourseModel(
      id: "5",
      name: "Yaratıcı Yazma: Hikaye Oluşturma ve Karakter Geliştirme Sanatı",
      author: "Zeynep Arslan"),
  CatalogueCourseModel(
      id: "6",
      name: "Mantık ve Algoritma: Programlamaya Giriş",
      author: "Eren Yıldırım"),
  CatalogueCourseModel(
      id: "7",
      name: "Dijital Pazarlama: Stratejiler ve Uygulamalar",
      author: "Selin Kaya"),
  CatalogueCourseModel(
      id: "8",
      name: "Görsel Sanatlar: Temel Kavramlar ve Teknikler",
      author: "Deniz Ertem"),
  CatalogueCourseModel(
      id: "9",
      name: "Yabancı Dil Öğrenme: Etkili Stratejiler ve Pratikler",
      author: "Selim Arıkan"),
  CatalogueCourseModel(
      id: "10",
      name: "Finansal Okuryazarlık: Temel Kavramlar ve Yatırım Stratejileri",
      author: "Aslı Yılmaz"),
  CatalogueCourseModel(
      id: "11",
      name: "Robotik: Temeller ve Uygulamalar",
      author: "Burak Demirci"),
  CatalogueCourseModel(
      id: "12",
      name: "Sosyal Medya Yönetimi: İçerik ve Analiz",
      author: "Esra Kocabaş"),
  CatalogueCourseModel(
      id: "13",
      name: "Mikroekonomi: Temel İlkeler ve Analiz",
      author: "Ahmet Şahin"),
  CatalogueCourseModel(
      id: "14",
      name: "Veri Tabanı Yönetimi: SQL Temelleri",
      author: "Nihan Yücel"),
  CatalogueCourseModel(
      id: "15",
      name: "Drama Sanatı: Sahne Performansı ve Yaratıcı İfadeler",
      author: "Cemal Aksoy"),
  CatalogueCourseModel(
      id: "16",
      name: "Girişimcilik: İş Fikri Geliştirme ve İş Planı Hazırlama",
      author: "Gizem Aydın"),
  CatalogueCourseModel(
      id: "17",
      name: "Görsel Programlama: Scratch ile Temel Kavramlar",
      author: "Ebru Kaya"),
  CatalogueCourseModel(
      id: "18",
      name: "Edebiyat Analizi: Klasik Eserlerde Temel Yaklaşımlar",
      author: "Murat Demir"),
  CatalogueCourseModel(
      id: "19",
      name: "Astronomi: Evrenin Sırlarını Keşfetme",
      author: "Ayşe Güler"),
  CatalogueCourseModel(
      id: "20",
      name: "Moleküler Biyoloji: Temel Kavramlar ve Laboratuvar Uygulamaları",
      author: "Kaan Yıldız"),
  CatalogueCourseModel(
      id: "21",
      name: "Sanal Gerçeklik: Temeller ve Uygulamalar",
      author: "Funda Ekmekçi"),
  CatalogueCourseModel(
      id: "22",
      name: "İş Etik ve Sosyal Sorumluluk: Kurumsal Davranış ve İnsan Hakları",
      author: "Berkay Karadağ"),
  CatalogueCourseModel(
      id: "23",
      name:
          "Uzaktan Çalışma Becerileri: Verimli ve Etkili Çalışma Stratejileri",
      author: "Zeynep Altın"),
  CatalogueCourseModel(
      id: "24",
      name: "Bilgisayar Ağları: Temel Kavramlar ve Yapılandırma",
      author: "Umut Demir"),
  CatalogueCourseModel(
      id: "25",
      name: "Çocuk Gelişimi: Temel İlkeler ve Eğitim Stratejileri",
      author: "Sevim Kaya"),
  CatalogueCourseModel(
      id: "26",
      name: "Dijital Fotoğrafçılık: Temel Teknikler ve Fotoğraf Düzenleme",
      author: "Cihan Akın"),
  CatalogueCourseModel(
      id: "27",
      name: "Psikoloji: Temel Kavramlar ve İnsan Davranışı",
      author: "Gülcan Yıldırım"),
  CatalogueCourseModel(
      id: "28",
      name: "Yazılım Test Otomasyonu: Selenium ve Python",
      author: "Emre Güler"),
  CatalogueCourseModel(
      id: "29",
      name: "Yiyecek ve Beslenme Bilimi: Temel İlkeler ve Sağlıklı Beslenme",
      author: "Şule Yılmaz"),
  CatalogueCourseModel(
      id: "30",
      name: "Tarih Analizi: Temel Yaklaşımlar ve Tarih Yazımı",
      author: "Mert Karadağ"),
];

//Review Screen
//Listelenmiş sınav skorları için gerekli sınavların listesi
List requiredExmamsList = [
  "Front End",
  "Full Stack",
  "Back End",
  "Microfost SQL Server",
  "Masaüstü Programlama",
];

// ------------------ ANASAYFA -> EĞİTİMLERİM  KISMI İÇİN OLAN EĞİTİMLER--------------------

List<EducationCourseModel> EducationCourseList = <EducationCourseModel>[
  EducationCourseModel(
    title: "Dr. Ecmel Ayral'dan Hoşgeldin Mesajı",
    lessonCount: "3 dk",
    money: 0,
    rating: 4.6,
    imagePath: "assets/images/course_images/ecmel_ayran.png",
    progress: 100,
    filterNumber: 3,
    videoLink: videoLinks[0],
  ),
  EducationCourseModel(
    title: "Eğitimlere Nasıl Katılırım?",
    lessonCount: "1 dk",
    money: 0,
    rating: 4.3,
    imagePath: "assets/images/course_images/istanbul_kod.png",
    progress: 100,
    filterNumber: 3,
    videoLink: videoLinks[1],
  ),
  EducationCourseModel(
    title: "Herkes İçin Kodlama - 2B",
    lessonCount: "47 sa 56 dk",
    money: 0,
    rating: 3.9,
    imagePath: "assets/images/course_images/kodlama.png",
    progress: 100,
    filterNumber: 3,
    videoLink: videoLinks[2],
  ),
  EducationCourseModel(
    title: "Hoşgeldin Buluşması - 2",
    lessonCount: "",
    money: 0,
    rating: 4.8,
    imagePath: "assets/images/course_images/hosgeldin.png",
    progress: 100,
    filterNumber: 3,
  ),
  EducationCourseModel(
    title: "İstanbul Kodluyor Proje Aşamaları",
    lessonCount: "1 dk",
    money: 0,
    rating: 4.1,
    imagePath: "assets/images/course_images/proje_asamalari.png",
    progress: 50,
    filterNumber: 3,
  ),
  EducationCourseModel(
    title: "Mentör Buluşmaları",
    lessonCount: "",
    money: 0,
    rating: 4.3,
    imagePath: "assets/images/course_images/mentor.png",
    progress: 70,
    filterNumber: 3,
  ),
  EducationCourseModel(
    title: "Mobil Geliştirici (Flutter) - 1B",
    lessonCount: "",
    money: 0,
    rating: 4.1,
    imagePath: "assets/images/course_images/mobil_1B.png",
    progress: 80,
    filterNumber: 1,
  ),
  EducationCourseModel(
    title: "Mobil Geliştirme | Öğrenme Yolculuğu",
    lessonCount: "19 sa 28 dk",
    money: 0,
    rating: 4.1,
    imagePath: "assets/images/course_images/mobil_ogrenme.png",
    progress: 90,
    filterNumber: 1,
  ),
  EducationCourseModel(
    title: "Softskill: İletişim Becerileri",
    lessonCount: "7 sa 48 dk",
    money: 0,
    rating: 4.1,
    imagePath: "assets/images/course_images/softskill.png",
    progress: 90,
    filterNumber: 2,
  ),
  EducationCourseModel(
    title: "Softskill: İngilizce Beceriler",
    lessonCount: "3 sa 45 dk",
    money: 0,
    rating: 4.7,
    imagePath: "assets/images/course_images/softskill.png",
    progress: 80,
    filterNumber: 2,
  ),
  EducationCourseModel(
    title: "Softskill: İş Becerileri",
    lessonCount: "6 sa 38 dk",
    money: 0,
    rating: 4.1,
    imagePath: "assets/images/course_images/softskill.png",
    progress: 80,
    filterNumber: 2,
  ),
  EducationCourseModel(
    title: "Softskill: İş Yönetimi Becerileri 1",
    lessonCount: "7 sa 19 dk",
    money: 0,
    rating: 4.5,
    imagePath: "assets/images/course_images/softskill.png",
    progress: 90,
    filterNumber: 2,
  ),
  EducationCourseModel(
    title: "Softskill: İş Yönetimi Becerileri 2",
    lessonCount: "3 sa 16 dk",
    money: 0,
    rating: 4.1,
    imagePath: "assets/images/course_images/softskill.png",
    progress: 40,
    filterNumber: 2,
  ),
  EducationCourseModel(
    title: "Softskill: Kişisel Gelişim",
    lessonCount: "6 sa 40 dk",
    money: 0,
    rating: 4.7,
    imagePath: "assets/images/course_images/softskill.png",
    progress: 90,
    filterNumber: 2,
  ),
  EducationCourseModel(
    title: "Softskill: Planlama Becerileri",
    lessonCount: "3 sa 30 dk",
    money: 0,
    rating: 4.1,
    imagePath: "assets/images/course_images/softskill.png",
    progress: 45,
    filterNumber: 2,
  ),
];

List videoLinks = [
  "https://cdn.cms.medianova.com/p/132/sp/13200/serveFlavor/entryId/0_402pg2wr/v/2/ev/10/flavorId/0_jpibng14/forceproxy/true/name/a.mp4",
  "https://cdn.cms.medianova.com/p/132/sp/13200/serveFlavor/entryId/0_1d1xnbrn/v/2/ev/10/flavorId/0_ccav4sj4/forceproxy/true/name/a.mp4",
  "https://cdn.cms.medianova.com/p/132/sp/13200/serveFlavor/entryId/0_yiu6meor/v/2/ev/10/flavorId/0_t84jbjzz/forceproxy/true/name/a.mp4"
];
