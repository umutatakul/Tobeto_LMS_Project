import 'package:flutter/material.dart';
import 'package:tobeto_lms_project/widgets/calendar_widgets/calendar_body.dart';
import 'package:tobeto_lms_project/widgets/custom_app_bar_widget.dart';
import 'package:tobeto_lms_project/widgets/custom_bottom_navigation_bar.dart';
import 'package:tobeto_lms_project/widgets/custom_drawer.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: CustomAppBarWidget(appBarTitle: "Takvim"),
        drawer: CustomDrawer(),
        body: CalendarBody(),
        bottomNavigationBar: CustomBottomNavigationBar(),
      ),
    );
  }
}
