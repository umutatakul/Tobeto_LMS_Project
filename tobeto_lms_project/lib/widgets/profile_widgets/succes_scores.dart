import 'package:flutter/material.dart';

class SuccesScores extends StatelessWidget {
  const SuccesScores({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Row yapınca hata veriyordu listTileları
    //Expended iiel sarınca düzeldi
    //TODO Score satıtlarını renklere ve kelimelere göre düzenle
    return const Row(children: [
      Expanded(
        child: ListTile(
          title: Text("SuccesScores"),
        ),
      ),
      Expanded(
        child: ListTile(
          title: Text("SuccesScores"),
        ),
      ),
    ]);
  }
}
