import 'package:flutter/material.dart';

class CustomListTileThree extends StatelessWidget {
  const CustomListTileThree({Key? key, required this.listTileName})
      : super(key: key);
  final String listTileName;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      //Icon olarak eklenmek isterse
      //leading: Icon(Icons.copyright),
      title: Text(listTileName),
    );
  }
}
