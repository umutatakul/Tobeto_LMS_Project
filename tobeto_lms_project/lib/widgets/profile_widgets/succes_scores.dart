import 'package:flutter/material.dart';

class SuccesScores extends StatelessWidget {
  const SuccesScores({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(children: [
      Expanded(
        child: ListTile(
          title: Text("SuccesScores"),
        ),
      ),
      Expanded(
        child: ListTile(
          title: Text("SuccesScores"),
        ),
      ),
    ]);
  }
}
