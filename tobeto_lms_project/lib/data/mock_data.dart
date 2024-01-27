import 'package:flutter/material.dart';
import 'package:tobeto_lms_project/models/course.dart';
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

  List resultsList = [
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

//Course information for Catalogue
List courseList = [
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
