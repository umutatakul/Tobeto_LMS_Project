import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/experience_card.dart';

class CustomizableTimelineTile extends StatelessWidget {
  const CustomizableTimelineTile({
    super.key,
    required this.isFirst,
    required this.isLast,
    required this.isPast,
    required this.years,
    required this.companyOrSchoolName,
    required this.sectionOrDepartmant,
  });
  final bool isFirst;
  final bool isLast;
  final bool isPast;
  final String years;
  final String companyOrSchoolName;
  final String sectionOrDepartmant;

  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      isFirst: isFirst,
      isLast: isLast,

      //Çizgi dekorasyonu
      beforeLineStyle:
          LineStyle(color: Theme.of(context).colorScheme.inversePrimary),

      //İkon dekorasyonı
      indicatorStyle: IndicatorStyle(
        width: 35,
        color: Theme.of(context).colorScheme.inversePrimary,
        iconStyle: IconStyle(
            iconData:
                isPast ? Icons.check_outlined : Icons.radio_button_off_outlined,
            color: Theme.of(context).colorScheme.background),
      ),
      endChild: ExperienceCard(
        companyOrSchoolName: companyOrSchoolName,
        sectionOrDepartmant: sectionOrDepartmant,
        years: years,
      ),
    );
  }
}
