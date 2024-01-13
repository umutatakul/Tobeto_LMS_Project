import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tobeto_lms_project/models/course.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({super.key, required this.course});
  final Course course;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 200,
      padding: const EdgeInsets.all(18),
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          const Color.fromARGB(255, 89, 141, 176).withOpacity(0.5),
          const Color.fromARGB(255, 89, 141, 176).withOpacity(0.9),
        ], begin: Alignment.topRight, end: Alignment.bottomLeft),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            course.name,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Row(children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Image.network(course.imgUrl, height: 100),
            ),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Icon(FontAwesomeIcons.personChalkboard),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Text(
                          course.author,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(color: Colors.white),
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ],
                  ),
                  RatingBar.builder(
                      minRating: 1,
                      initialRating: 3,
                      itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 3,
                          ),
                      onRatingUpdate: (rating) {})
                ],
              ),
            )
          ]),
        ],
      ),
    );
  }
}