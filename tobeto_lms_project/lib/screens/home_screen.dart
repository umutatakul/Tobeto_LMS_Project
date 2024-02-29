import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:tobeto_lms_project/data/announces_mock_data_list.dart';
import 'package:tobeto_lms_project/data/apllications_mock_data_list.dart';
import 'package:tobeto_lms_project/data/exam_mock_data_list.dart';
import 'package:tobeto_lms_project/data/mock_data.dart';
import 'package:tobeto_lms_project/widgets/custom_app_bar_widget.dart';
import 'package:tobeto_lms_project/widgets/custom_bottom_navigation_bar.dart';
import 'package:tobeto_lms_project/widgets/custom_drawer.dart';
import 'package:tobeto_lms_project/widgets/home_widgets/customizable_container_field_home.dart';
import 'package:tobeto_lms_project/widgets/home_widgets/exam_field_home.dart';
import 'package:tobeto_lms_project/widgets/home_widgets/header_field_home.dart';
import 'package:tobeto_lms_project/widgets/home_widgets/tabbar_field_home.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/footer_field_profile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

    //final courseCollection = _firebaseFirestore.collection("course");
    // final applicationCollection = _firebaseFirestore.collection("application");
    // final announceCollection = _firebaseFirestore.collection("announce");
    final examCollection = _firebaseFirestore.collection("exam");

    return Scaffold(
        //Bunu her  eklersen bottomBar izi yok oluyor
        extendBody: true,
        appBar: const CustomAppBarWidget(appBarTitle: "Anasayfa"),
        drawer: CustomDrawer(),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const HeaderFieldHome(),
              const TabbarFieldHome(),
              const SizedBox(height: 16),
              const ExamFieldHome(),
              const SizedBox(height: 16),
              const CustomizableContainerFieldHome(title: "Profilini Oluştur"),
              const CustomizableContainerFieldHome(
                  title: "Kendini Değerlendir"),
              const CustomizableContainerFieldHome(title: "Öğrenmeye Başla"),
              // Verileri Firestore aktarmak için oluşturuduğumuz fonksiyon ve buton
              ElevatedButton.icon(
                onPressed: () async {
                  bool dataAdded = false;
                  if (!dataAdded) {
                    for (var exam in examMockDataList) {
                      await examCollection.add(exam.toMap());
                    }
                    dataAdded = true;
                  }
                },
                icon: const Icon(Icons.upload),
                label: const Text("firestore veri yükle..."),
              ),

              FooterFieldProfile(
                  backgroundColors:
                      Theme.of(context).colorScheme.inverseSurface)
            ],
          ),
        ),
        bottomNavigationBar: const CustomBottomNavigationBar()
        // BottomAppBar(
        //   color: Colors.purple,
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     children: <Widget>[
        //       IconButton(
        //         icon: const Icon(Icons.home),
        //         onPressed: () {},
        //       ),
        //       IconButton(
        //         icon: const Icon(Icons.settings),
        //         onPressed: () {},
        //       ),
        //     ],
        //   ),
        // ),
        );
  }
}
