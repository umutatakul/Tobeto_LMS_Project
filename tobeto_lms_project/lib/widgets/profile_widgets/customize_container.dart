import 'package:flutter/material.dart';

abstract class CustomizeContainer extends StatelessWidget {
  const CustomizeContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      width: double.infinity,
      margin: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
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
