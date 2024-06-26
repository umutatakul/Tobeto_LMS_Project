import 'package:flutter/material.dart';

class CustomizableCardMainInformationProfile extends StatelessWidget {
  const CustomizableCardMainInformationProfile(
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
        //color: Colors.white,

        color: Theme.of(context).colorScheme.background,
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
                style: const TextStyle(),
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
