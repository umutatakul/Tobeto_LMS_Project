import 'package:flutter/material.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/footer_field_profile.dart';

class CustomizableHomeCard extends StatelessWidget {
  const CustomizableHomeCard({Key? key, required this.title}) : super(key: key);
  final title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      width: double.infinity,
      margin: const EdgeInsets.all(12),
      height: MediaQuery.of(context).size.height * 0.2,
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColorDark,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(30),
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Container(
              width: double.infinity,
              child: const Text(
                "Başla",
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
