import 'package:flutter/material.dart';

class NameFieldMyEducation extends StatelessWidget {
  const NameFieldMyEducation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Hoşgeldin Alınan İsim",
      style: Theme.of(context)
          .textTheme
          .headlineMedium!
          .copyWith(fontWeight: FontWeight.bold),
    );
  }
}
