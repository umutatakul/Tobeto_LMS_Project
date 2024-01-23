import 'package:flutter/material.dart';

abstract class CustomizeContainerProfile extends StatelessWidget {
  const CustomizeContainerProfile({super.key, required this.title});
  final String title;

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
      child: insideOfContainer(),
    );
  }

  Widget insideOfContainer();
}
