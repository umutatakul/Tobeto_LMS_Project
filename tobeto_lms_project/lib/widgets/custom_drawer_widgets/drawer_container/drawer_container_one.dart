import 'package:flutter/material.dart';

class DrawerContainerOne extends StatelessWidget {
  const DrawerContainerOne({super.key, required this.containerName});
  final String containerName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        border: Border.all(
            //color: Colors.grey,
            ),
        borderRadius: const BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
      child: ListTile(
        title: Text(containerName),
        trailing: const Padding(
          padding: EdgeInsets.only(right: 10.0),
          child: Icon(Icons.person_sharp),
        ),
      ),
    );
  }
}
