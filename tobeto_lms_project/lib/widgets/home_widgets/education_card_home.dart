import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tobeto_lms_project/data/mock_data.dart';
import 'package:tobeto_lms_project/widgets/home_widgets/home_tabbar_education_video.dart';

class EducationCardHome extends StatelessWidget {
  EducationCardHome({Key? key}) : super(key: key);
  final firstElementOfMockData = educationCourseList[0];

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Theme.of(context).colorScheme.primaryContainer),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  child: AspectRatio(
                    aspectRatio: 2,
                    child: Image.asset(
                      firstElementOfMockData.imagePath,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
              Text(
                firstElementOfMockData.title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                "Toplam video süresi : ${firstElementOfMockData.lessonCount}",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Container(
                  margin: const EdgeInsets.all(12),
                  child: ElevatedButton(
                      onPressed: () {
                        // Navigator.of(context).push(MaterialPageRoute(
                        //   builder: (context) => const HomeTabbarEducationVideo(
                        //     videoLink:
                        //         "https://cdn.cms.medianova.com/p/132/sp/13200/serveFlavor/entryId/0_402pg2wr/v/2/ev/10/flavorId/0_jpibng14/forceproxy/true/name/a.mp4",
                        //   ),
                        // ));
                      },
                      child: Container(
                          width: double.infinity,
                          child: Text(
                            "Eğitime Git",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(
                                  color: Colors.white,
                                ),
                            textAlign: TextAlign.center,
                          )))),
            ],
          )
          //Image.network(""),
          ),
    );
  }
}
