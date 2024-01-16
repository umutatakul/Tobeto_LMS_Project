import 'package:flutter/material.dart';

class FooterFieldProfile extends StatelessWidget {
  const FooterFieldProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [Text("Tobeto"), Text("Bize ulaşın butonu")],
        ),
        Text("c 2022 Texto yazısı")
      ],
    );
  }
}
