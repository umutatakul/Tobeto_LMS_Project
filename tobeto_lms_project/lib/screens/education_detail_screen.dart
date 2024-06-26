import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_lms_project/api/blocs/education_course_bloc/education_course_bloc.dart';
import 'package:tobeto_lms_project/api/blocs/education_course_bloc/education_course_event.dart';
import 'package:tobeto_lms_project/api/blocs/education_course_bloc/education_course_state.dart';
import 'package:tobeto_lms_project/models/education_course_model.dart';
import 'package:tobeto_lms_project/widgets/custom_app_bar_widget.dart';

class EducationDetailScreen extends StatelessWidget {
  // final String? courseName;
  // final String? courseImage;
  // final String? courseInfo;
  // final String? coursePrice;

  const EducationDetailScreen({
    Key? key,
    this.education,
  }) : super(key: key);
  final EducationCourseModel? education;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBarWidget(appBarTitle: "Eğitim Detayları"),
        body: BlocBuilder<EducationCourseBloc, EducationCourseState>(
          builder: (context, state) {
            if (state is EducationCourseInitialState) {
              context
                  .read<EducationCourseBloc>()
                  .add(GetEducationCourseEvent());
            }
            if (state is EducationCourseLoadingState) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state is EducationCourseLoadedState) {
              final List<EducationCourseModel> coursesList =
                  state.educationCourses;
              final args =
                  ModalRoute.of(context)!.settings.arguments as String?;
              final currentCourseItem = coursesList[
                  coursesList.indexWhere((course) => course.title == args)];
              if (args != null) {
                var currentCourseFromState = state.educationCourses[
                    coursesList.indexWhere((course) => course.title == args)];
              }
              return Stack(
                children: [
                  Column(children: [
                    Expanded(
                      flex: 35,
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(currentCourseItem.imagePath),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    const Spacer(
                      flex: 65,
                    )
                  ]),
                  DraggableScrollableSheet(
                    initialChildSize: 0.65,
                    minChildSize: 0.65,
                    builder: (BuildContext context,
                        ScrollController scrollController) {
                      return Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(32.0))),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: ListView(
                            controller: scrollController,
                            children: [
                              Center(
                                child: Container(
                                  decoration: const BoxDecoration(
                                      //color: MyTheme.grey.withOpacity(0.5),
                                      borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(25.0))),
                                  height: 4,
                                  width: 48,
                                ),
                              ),
                              MyTheme.mediumVerticalPadding,
                              Text(currentCourseItem.title,
                                  style: const TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold)),
                              //TODO Breakpoint ile bakıldı. Description datan boş geliyor. Düzelt
                              Text(currentCourseItem.description!,
                                  style: const TextStyle(
                                    fontSize: 16,
                                  )),
                              MyTheme.largeVerticalPadding,
                              Row(
                                children: [
                                  Text(currentCourseItem.lessonCount,
                                      style: const TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold)),
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Text(
                                            //Progress metni
                                            "İlerleme ${currentCourseItem.progress}"),
                                        Container(
                                          margin: const EdgeInsets.fromLTRB(
                                              32.0, 4.0, 32.0, 8.0),
                                          height: 10,
                                          child: ClipRRect(
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(10)),
                                            child: LinearProgressIndicator(
                                              value:
                                                  currentCourseItem.progress /
                                                      100,
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                      MyTheme.progressColor),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              MyTheme.mediumVerticalPadding,
                              Text(
                                // Açıklama kısmı Almıyor
                                currentCourseItem.description!,
                                style: const TextStyle(fontSize: 16),
                              ),
                              MyTheme.mediumVerticalPadding,
                              Row(
                                children: [
                                  const Spacer(
                                    flex: 2,
                                  ),
                                  Expanded(
                                    flex: 4,
                                    child: ElevatedButton(
                                        //Video Ekranına gidiş

                                        onPressed: () {
                                          Navigator.pushNamed(
                                              context, '/customVideoScreen',
                                              arguments: education?.videoLink);
                                        },
                                        child: const Text(
                                          "Eğitime Git",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500),
                                        )),
                                  ),
                                  const Spacer(
                                    flex: 2,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ],
              );
            }
            if (state is EducationCourseError) {
              Center(
                child: Text(state.errorMessage),
              );
            }
            return const Center(
              child: Text(
                  "Bilinmeyen hata oluştu Lütfen Emirhanla İletişime geçin"),
            );
          },
        ));
  }
}

// return Stack(
//         children: [
//           Column(children: [
//             Expanded(
//               flex: 35,
//               child: Center(
//                 child: Image.network(education?.imagePath ?? ""),
//               ),
//             ),
//             const Spacer(
//               flex: 65,
//             )
//           ]),
//           DraggableScrollableSheet(
//             initialChildSize: 0.65,
//             minChildSize: 0.65,
//             builder: (BuildContext context, ScrollController scrollController) {
//               return Container(
//                 decoration: const BoxDecoration(
//                     color: Colors.white,
//                     borderRadius:
//                         BorderRadius.vertical(top: Radius.circular(32.0))),
//                 child: Padding(
//                   padding: const EdgeInsets.all(16.0),
//                   child: ListView(
//                     controller: scrollController,
//                     children: [
//                       Center(
//                         child: Container(
//                           decoration: BoxDecoration(
//                               color: MyTheme.grey.withOpacity(0.5),
//                               borderRadius: const BorderRadius.vertical(
//                                   top: Radius.circular(1.0))),
//                           height: 4,
//                           width: 48,
//                         ),
//                       ),
//                       MyTheme.mediumVerticalPadding,
//                       Text(education?.title ?? "",
//                           style: const TextStyle(
//                               fontSize: 24, fontWeight: FontWeight.bold)),
//                       Text(education?.description ?? "",
//                           style: TextStyle(fontSize: 16, color: MyTheme.grey)),
//                       MyTheme.largeVerticalPadding,
//                       Row(
//                         children: [
//                           Text(education?.lessonCount ?? "",
//                               style: const TextStyle(
//                                   fontSize: 22, fontWeight: FontWeight.bold)),
//                           Expanded(
//                             child: Column(
//                               children: [
//                                 const Text("Progress: 100%"),
//                                 Container(
//                                   margin: const EdgeInsets.fromLTRB(
//                                       32.0, 4.0, 32.0, 8.0),
//                                   height: 10,
//                                   child: ClipRRect(
//                                     borderRadius: const BorderRadius.all(
//                                         Radius.circular(10)),
//                                     child: LinearProgressIndicator(
//                                       value: 1,
//                                       valueColor: AlwaysStoppedAnimation<Color>(
//                                           MyTheme.progressColor),
//                                     ),
//                                   ),
//                                 )
//                               ],
//                             ),
//                           )
//                         ],
//                       ),
//                       MyTheme.mediumVerticalPadding,
//                       const Text(
//                         "Learn the basics of lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
//                         style: TextStyle(fontSize: 16),
//                       ),
//                       MyTheme.mediumVerticalPadding,
//                       Row(
//                         children: [
//                           const Spacer(
//                             flex: 2,
//                           ),
//                           Expanded(
//                             flex: 4,
//                             child: ElevatedButton(
//                                 onPressed: () {
//                                   // Navigator.push(
//                                   //   context,
//                                   //   MaterialPageRoute(
//                                   //       builder: (context) => GraduationScreen(
//                                   //             courseName: courseName,
//                                   //           )),
//                                   // );
//                                 },
//                                 child: const Text(
//                                   "Graduate",
//                                   style: TextStyle(fontWeight: FontWeight.w500),
//                                 )),
//                           ),
//                           const Spacer(
//                             flex: 2,
//                           )
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//               );
//             },
//           ),
//         ],
//       ),

class MyTheme {
  static Color get backgroundColor => const Color(0xFFF7F7F7);
  static Color get grey => const Color(0xFF999999);
  static Color get catalogueCardColor =>
      const Color(0xFFBAE5D4).withOpacity(0.5);
  static Color get catalogueButtonColor => const Color(0xFF29335C);
  static Color get courseCardColor => const Color(0xFFEDF1F1);
  static Color get progressColor => const Color(0xFF36F1CD);

  static Padding get largeVerticalPadding =>
      const Padding(padding: EdgeInsets.only(top: 32.0));

  static Padding get mediumVerticalPadding =>
      const Padding(padding: EdgeInsets.only(top: 16.0));

  static Padding get smallVerticalPadding =>
      const Padding(padding: EdgeInsets.only(top: 8.0));

  static ThemeData get theme => ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: Colors.blueGrey,
      ).copyWith(
        cardTheme: const CardTheme(
            shadowColor: Colors.transparent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16.0)))),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(0.0),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            backgroundColor: MaterialStateProperty.all<Color>(
                catalogueButtonColor), // Button color
            foregroundColor: MaterialStateProperty.all<Color>(
                Colors.white), // Text and icon color
          ),
        ),
      );
}
