import 'package:flutter/material.dart';

class CustomListTileTwo extends StatelessWidget {
  const CustomListTileTwo(
      {Key? key, required this.listTileName, required this.icon})
      : super(key: key);
  final String listTileName;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(listTileName),

      //iconColor: Colors.grey,
      trailing: Padding(
        padding: const EdgeInsets.only(right: 170),
        child: icon,
      ),
    );
  }
}
