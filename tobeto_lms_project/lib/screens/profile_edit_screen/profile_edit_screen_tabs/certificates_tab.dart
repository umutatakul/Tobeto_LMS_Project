import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/footer_field_profile.dart';

class CertificatesTab extends StatefulWidget {
  const CertificatesTab({Key? key}) : super(key: key);

  @override
  _CertificatesTabState createState() => _CertificatesTabState();
}

class _CertificatesTabState extends State<CertificatesTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        const SizedBox(
          height: 40,
        ),
        Text(
          "Sertifikalar",
          style: Theme.of(context).textTheme.displayMedium,
        ),
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.all(12),
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1.2,
              style: BorderStyle.solid,
              color: Theme.of(context).colorScheme.primary,
            ),
            borderRadius: BorderRadius.circular(12),
            boxShadow: const [],
          ),
          child: InkWell(
            onTap: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(
                  FontAwesomeIcons.cloudArrowUp,
                  size: 80,
                  color:
                      // Colors.amber,
                      Theme.of(context).colorScheme.primary,
                ),
                Text(
                  "Dosya Yükle",
                  style: Theme.of(context).textTheme.titleLarge,
                )
              ],
            ),
          ),
        ),
        FooterFieldProfile(
            backgroundColors: Theme.of(context).colorScheme.inversePrimary)
      ]),
    );
  }
}
