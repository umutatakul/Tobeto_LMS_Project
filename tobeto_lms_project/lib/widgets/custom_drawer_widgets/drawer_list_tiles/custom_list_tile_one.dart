import 'package:flutter/material.dart';

class CustomListTileOne extends StatelessWidget {
  const CustomListTileOne(
      {super.key, required this.listTileName, required this.targetScreen});
  final String listTileName;
  final Widget targetScreen;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(listTileName),
      onTap: () {
        Navigator.pop(context);
        Navigator.of(context).push(MaterialPageRoute(
          builder: (ctx) => targetScreen,
        ));
      },
    );
  }
}
