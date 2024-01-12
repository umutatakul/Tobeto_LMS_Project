import 'package:flutter/material.dart';

class CloseButton extends StatelessWidget {
  const CloseButton({Key? key}) : super(key: key);
  final IconData icon = Icons.close_sharp;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(icon
          //color: Colors.grey,
          ),
      onPressed: () {
        Navigator.pop(context);
      },
      iconSize: 30,
    );
  }
}
