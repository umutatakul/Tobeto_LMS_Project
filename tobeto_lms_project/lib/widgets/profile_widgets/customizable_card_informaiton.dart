import 'package:flutter/material.dart';

class CustomizableCardMainInformation extends StatelessWidget {
  const CustomizableCardMainInformation(
      {super.key,
      required this.litleTitle,
      required this.bigtext,
      required this.icon});
  final String litleTitle;
  final String bigtext;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(children: [
          icon,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                litleTitle,
                style: const TextStyle(color: Colors.blueGrey),
              ),
              Text(
                bigtext,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
