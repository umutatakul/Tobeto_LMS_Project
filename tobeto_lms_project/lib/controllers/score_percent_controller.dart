//Mock datamdaki sınav sonuçlarını, ekranda zorunlu olarak listelemek istediğim
//sınav adları ile  kıyasla. Eğer varsa listedeki indekisini al ve ordaki scoru döndür
//eğer -1 yani index yoksa 0 ı döndür
//TODO Veriler için type safe olması amacı ile veri tiplerini tanımla
double scorePercentController(List listOfResults, String nameOfExam) {
  final int indexOfCurrentScore =
      listOfResults.indexWhere((element) => element.name == nameOfExam);
  return listOfResults[indexOfCurrentScore != -1
          //eğer index yoksa -1 (eksi bir ) döndürüyor
          ? indexOfCurrentScore
          : 0]
      .score;
}
