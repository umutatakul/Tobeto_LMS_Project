import 'package:flutter/material.dart';

class AboutCardProfile extends StatelessWidget {
  const AboutCardProfile(
      {Key? key, required this.title, required this.informationText})
      : super(key: key);

  final String title;
  final String informationText;

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
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              // Column(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     Text(
              //       title,
              //       style: Theme.of(context).textTheme.titleLarge!.copyWith(fontStyle: ),
              //     ),
              //     Text(informationText),
              //   ],
              // ),
              Card(
            child: ListTile(
              title: Text(
                title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              subtitle: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(informationText,
                    style: Theme.of(context).textTheme.bodyLarge),
              ),
            ),
          )),
    );
  }
}
