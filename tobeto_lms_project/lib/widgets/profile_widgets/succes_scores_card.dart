import 'package:flutter/material.dart';

class SuccesScoresCard extends StatelessWidget {
  const SuccesScoresCard(
      {Key? key,
      required this.succesColor,
      required this.succesScores,
      required this.succesProporty})
      : super(key: key);
  final Color succesColor;
  final double succesScores;
  final String succesProporty;

  @override
  Widget build(BuildContext context) {
    //Row yapınca hata veriyordu listTileları
    //Expended ile sarınca düzeldi
    //TODO Score satıtlarını renklere ve kelimelere göre düzenle
    return Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
            child: ListTile(
              leading: AspectRatio(
                  aspectRatio: 2,
                  child: Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: succesColor,
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(12)),
                      height: 1,
                      child: Text(succesScores.toString()))),
              title: Text(succesProporty),
            ),
          ),
        ]),
      ],
    );
  }
}
