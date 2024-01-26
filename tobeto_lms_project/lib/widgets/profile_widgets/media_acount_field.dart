import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/customize_container_profile.dart';

class MediaAcountField extends StatelessWidget {
  const MediaAcountField({Key? key, required this.title}) : super(key: key);
  final double ourIconSize = 70.0;
  final String title;
  @override
  Widget build(BuildContext context) {
    return CustomizeContainerProfile(
      title: 'Medya hesapları ',
      widgetOfInside: Column(
        children: [
          Card(
            child: ListTile(
              title: Text(title),
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
      ),
    );
  }
}

// class MediaAccountField extends CustomizeContainerProfile {
//   const MediaAccountField({super.key, required super.title});

//   final double ourIconSize = 70.0;

//   @override
//   Widget insideOfContainer() {
//     return Column(
//       children: [
//         const Card(
//           child: ListTile(
//             title: Text("Medya Hesapları"),
//           ),
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             Icon(
//               FontAwesomeIcons.squareInstagram,
//               size: ourIconSize,
//             ),
//             Icon(
//               FontAwesomeIcons.linkedinIn,
//               size: ourIconSize,
//             ),
//             Icon(
//               FontAwesomeIcons.github,
//               size: ourIconSize,
//             ),
//           ],
//         )
//       ],
//     );
//   }
// }
