import 'package:flutter/material.dart';

class CustomizeContainerProfile extends StatelessWidget {
  const CustomizeContainerProfile(
      {super.key, required this.title, required this.widgetOfInside});
  final String title;
  final Widget widgetOfInside;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      width: double.infinity,
      margin: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        //color: Colors.white,
        color: Theme.of(context).colorScheme.background,
        border: Border.all(color: Colors.grey),
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: widgetOfInside,
    );
  }
}
