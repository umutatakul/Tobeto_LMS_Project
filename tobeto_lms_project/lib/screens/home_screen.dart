import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_lms_project/api/blocs/profile_bloc/profile_bloc.dart';
import 'package:tobeto_lms_project/api/blocs/profile_bloc/profile_bloc_event.dart';
import 'package:tobeto_lms_project/api/blocs/profile_bloc/profile_bloc_state.dart';
import 'package:tobeto_lms_project/data/mock_data.dart';
import 'package:tobeto_lms_project/models/user_model.dart';
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

    final courseCollection = _firebaseFirestore.collection("course");
    // final applicationCollection = _firebaseFirestore.collection("application");
    // final announceCollection = _firebaseFirestore.collection("announce");
    //final examCollection = _firebaseFirestore.collection("exam");

    return Scaffold(
        //Bunu eğer  eklersen bottomBar izi yok oluyor
        extendBody: true,
        appBar: const CustomAppBarWidget(appBarTitle: "Anasayfa"),
        drawer: CustomDrawer(),
        body: BlocBuilder<ProfileBloc, ProfileState>(
          builder: (context, state) {
            if (state is ProfileInitial) {
              context.read<ProfileBloc>().add(GetProfileEvent());
            }

            if (state is ProfileLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state is ProfileLoaded) {
              final UserModel user = state.user;
              return SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    HeaderFieldHome(
                      nameSurname: "${user.name} ${user.surname}",
                    ),
                    const TabbarFieldHome(),
                    const SizedBox(height: 16),
                    const ExamFieldHome(),
                    const SizedBox(height: 16),
                    const CustomizableContainerFieldHome(
                        title: "Profilini Oluştur"),
                    const CustomizableContainerFieldHome(
                        title: "Kendini Değerlendir"),
                    const CustomizableContainerFieldHome(
                        title: "Öğrenmeye Başla"),

                    // Verileri Firestore aktarmak için oluşturuduğumuz fonksiyon ve buton
                    Visibility(
                      //kullanıcı admin yetkilendirmesine sahipse bu paneli görünür kıl
                      //bunu firebase user colletction içinde default flase olarak değeri el ile true olarak yapıp ayarlıyoruz.
                      visible: user.isAdmin,
                      child: ElevatedButton.icon(
                        onPressed: () async {
                          bool dataAdded = false;
                          if (!dataAdded) {
                            for (var course in educationCourseList) {
                              await courseCollection.add(course.toMap());
                            }
                            dataAdded = true;
                          }
                        },
                        icon: const Icon(Icons.upload),
                        label: const Text("firestore veri yükle..."),
                      ),
                    ),

                    FooterFieldProfile(
                        backgroundColors:
                            Theme.of(context).colorScheme.inverseSurface)
                  ],
                ),
              );
            }
            return const Center(
              child: Text("Tüm öngörülen state durumlarını aştınız tebrikler"),
            );
          },
        ),
        bottomNavigationBar: const CustomBottomNavigationBar());
  }
}
