import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/customize_container_profile.dart';

class MediaAccountField extends CustomizeContainerProfile {
  const MediaAccountField({super.key, required super.title});

  final double ourIconSize = 70.0;

  @override
  Widget insideOfContainer() {
    return Column(
      children: [
        const Card(
          child: ListTile(
            title: Text("Medya Hesapları"),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              FontAwesomeIcons.squareInstagram,
              size: ourIconSize,
            ),
            Icon(
              FontAwesomeIcons.linkedinIn,
              size: ourIconSize,
            ),
            Icon(
              FontAwesomeIcons.github,
              size: ourIconSize,
            ),
          ],
        )
      ],
    );
  }
}
