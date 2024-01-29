import 'package:flutter/material.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/activity_chart.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/customize_container_profile.dart';

class ActivitiyFieldProfile extends StatelessWidget {
  const ActivitiyFieldProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color backgroudcolor = Theme.of(context).dividerColor;

    return CustomizeContainerProfile(
      title: "Aktivite Haritam",
      widgetOfInside: Center(
        child: Container(color: backgroudcolor, child: const ActivityChart()),
      ),
    );
  }
}
