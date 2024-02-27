import 'package:flutter/material.dart';
import 'package:tobeto_lms_project/data/apllications_mock_data_list.dart';
import 'package:tobeto_lms_project/models/application__screen_model.dart';
import 'package:tobeto_lms_project/widgets/applications_widgets/application_card_application_screen.dart';
import 'package:tobeto_lms_project/widgets/custom_app_bar_widget.dart';
import 'package:tobeto_lms_project/widgets/custom_drawer.dart';

class ApplicationsScreen extends StatelessWidget {
  ApplicationsScreen({
    Key? key,
  }) : super(key: key);

  final applicationList = applicationsDataList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBarWidget(appBarTitle: "Başvurularım"),
      drawer: CustomDrawer(),
      body: Container(
        //TODO buraya bir header oluştur
        child: Expanded(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: applicationList.length,
            itemBuilder: (ctx, index) {
              return ApplicationCardApplicationScreen(
                  application: applicationList[index]);
            },

            // children: [
            //   // for (final shownCourse in courseList)
            //   //   CourseCard(
            //   //     course: shownCourse,
            //   //   )
            // ],
          ),
        )),
      ),
    );
  }
}
