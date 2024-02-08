//for içindeki mevcut irdelenen examName i mock datamdaki score listemle kıyasla
//mevcutsa listeme ekle liste boş mu diye bak
bool isScoreThere(List listOfScores, String nameOfExam) {
  return listOfScores
      .where((element) => element.name == nameOfExam)
      .toList()
      .isNotEmpty;
}
