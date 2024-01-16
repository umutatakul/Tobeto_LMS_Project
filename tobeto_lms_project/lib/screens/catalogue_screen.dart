import 'package:flutter/material.dart';
import 'package:tobeto_lms_project/constants/paths/paths_of_catalogue.dart';
import 'package:tobeto_lms_project/data/mock_data.dart';
import 'package:tobeto_lms_project/widgets/catalogue_widgets/course_card.dart';
import 'package:tobeto_lms_project/widgets/custom_drawer.dart';

class CatalogueScreen extends StatelessWidget {
  const CatalogueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Katalog")),
      ),
      drawer: CustomDrawer(),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Stack(alignment: Alignment.centerRight, children: [
            Container(
              margin: const EdgeInsets.all(0),
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 53, 85, 141),
                  border: Border.all(
                      color: const Color.fromARGB(255, 59, 112, 138)),
                  borderRadius: const BorderRadius.all(Radius.circular(20))),
              child: Image.asset(CatalogueAssets().backGroundOne),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Kendini geliştir",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            )
          ]),
          Expanded(
              child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: courseList.length,
            itemBuilder: (ctx, index) {
              return CourseCard(course: courseList[index]);
            },

            // children: [
            //   // for (final shownCourse in courseList)
            //   //   CourseCard(
            //   //     course: shownCourse,
            //   //   )
            // ],
          ))
        ],
      ),
    );
  }
}
