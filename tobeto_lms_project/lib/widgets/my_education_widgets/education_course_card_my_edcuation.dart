import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:tobeto_lms_project/models/education_course_model.dart';

class EducationCourseCardMyEdcuation extends StatelessWidget {
  const EducationCourseCardMyEdcuation({Key? key, required this.course})
      : super(key: key);
  final EducationCourseModel course;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          border: Border.all(), borderRadius: BorderRadius.circular(18)),
      padding: const EdgeInsets.all(4),
      child: Column(
        children: [
          ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15)),
              child: AspectRatio(
                  aspectRatio: 2,
                  child: Image.asset(
                    course.imagePath,
                    fit: BoxFit.fitWidth,
                  ))),
          Text(
            course.title,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Row(children: [
            Icon(Icons.watch_later_outlined),
            Text(course.lessonCount)
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RatingBar.builder(
                allowHalfRating: true,
                itemSize: 25,
                itemBuilder: (context, index) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                initialRating: course.rating.toDouble(),
                onRatingUpdate: (rating) => print(rating),
              ),
              Text(course.rating.toString()),
            ],
          ),
          Row(
            children: [
              LinearPercentIndicator(
                width: 140.0,
                lineHeight: 14.0,
                barRadius: Radius.circular(10),
                percent: course.progress / 100,
                backgroundColor: Colors.grey,
                progressColor: Colors.blue,
              ),
              Text(course.progress.toString()),
            ],
          ),
        ],
      ),
    );
  }
}


// Container(
//         margin: EdgeInsets.all(12),
//         width: double.infinity,
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(20),
//             color: Theme.of(context).colorScheme.primaryContainer),
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: ClipRRect(
//                 borderRadius: const BorderRadius.only(
//                     topLeft: Radius.circular(15),
//                     topRight: Radius.circular(15)),
//                 child: AspectRatio(
//                   aspectRatio: 2,
//                   child: Image.asset(
//                     course.imagePath,
//                     fit: BoxFit.fitWidth,
//                   ),
//                 ),
//               ),
//             ),
//             Text(
//               course.title,
//               style: Theme.of(context).textTheme.titleLarge,
//             ),
//             Text(
//               "Toplam video süresi : ${course.lessonCount}",
//               style: Theme.of(context).textTheme.titleMedium,
//             ),
//             Container(
//                 margin: EdgeInsets.all(12),
//                 child: ElevatedButton(
//                     onPressed: () {},
//                     child: Container(
//                         width: double.infinity,
//                         child: Text(
//                           "Eğitime Git",
//                           style:
//                               Theme.of(context).textTheme.titleLarge!.copyWith(
//                                     color: Colors.white,
//                                   ),
//                           textAlign: TextAlign.center,
//                         )))),
//           ],
//         )
//         //Image.network(""),
//         );