import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/customize_container.dart';

class MediaAccountField extends CustomizeContainer {
  const MediaAccountField({super.key});
  final double iconSize = 70;

  @override
  Widget insideOfContainer() {
    return const Column(
      children: [
        Card(
          child: ListTile(
            title: Text("Medya Hesapları"),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              FontAwesomeIcons.squareInstagram,
              size: 70,
            ),
            Icon(
              FontAwesomeIcons.linkedinIn,
              size: 70,
            ),
            Icon(
              FontAwesomeIcons.github,
              size: 80,
            ),
          ],
        )
      ],
    );
  }
}
