import 'package:flutter/material.dart';
import 'package:tobeto_lms_project/widgets/custom_app_bar_widget.dart';
import 'package:tobeto_lms_project/widgets/custom_bottom_navigation_bar.dart';
import 'package:tobeto_lms_project/widgets/custom_drawer.dart';
import 'package:tobeto_lms_project/widgets/home_widgets/customizable_container_field_home.dart';
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
    return Scaffold(
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
              Container(
                margin: const EdgeInsets.only(left: 12, right: 12),
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Theme.of(context).colorScheme.primary,
                      Theme.of(context).colorScheme.onPrimary
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  "Sınavları Görmek için Tıklayın",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              const SizedBox(height: 16),
              const CustomizableContainerFieldHome(title: "Profilini Oluştur"),
              const CustomizableContainerFieldHome(
                  title: "Kendini Değerlendir"),
              const CustomizableContainerFieldHome(title: "Öğrenmeye Başla"),
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
