import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tobeto_lms_project/constants/paths/paths_of_custom_drawer.dart';
import 'package:tobeto_lms_project/screens/calendar_screen.dart';
import 'package:tobeto_lms_project/screens/catalogue_screen.dart';
import 'package:tobeto_lms_project/screens/home_screen.dart';
import 'package:tobeto_lms_project/screens/profile_screen.dart';
import 'package:tobeto_lms_project/screens/review_screen.dart';
import 'package:tobeto_lms_project/constants/strings/custom_drawer_strings.dart';
import 'package:tobeto_lms_project/widgets/custom_drawer_widgets/drawer_container/drawer_container_one.dart';
import 'package:tobeto_lms_project/widgets/custom_drawer_widgets/drawer_list_tiles/custom_list_tile_one.dart';
import 'package:tobeto_lms_project/widgets/custom_drawer_widgets/drawer_list_tiles/custom_list_tile_three.dart';
import 'package:tobeto_lms_project/widgets/custom_drawer_widgets/drawer_list_tiles/custom_list_tile_two.dart';

class CustomDrawer extends StatelessWidget {
  CustomDrawer({Key? key}) : super(key: key);
  final CustomDrawerStrings _customDrawerStrings = CustomDrawerStrings();
  final CustomDrawerAssets _customDrawerAssets = CustomDrawerAssets();
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          SizedBox(
            height: 70,
            child: DrawerHeader(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SvgPicture.asset(
                    _customDrawerAssets.namedLogoPath,
                    height: 40.0,
                    //width: Null,
                    //fit: BoxFit.cover,
                  ),
                  // SizedBox(
                  //   width: 16,
                  // ),
                ],
              ),
            ),
          ),
          CustomListTileOne(
              listTileName: _customDrawerStrings.mainScreen,
              targetScreen: const HomeScreen()),
          CustomListTileOne(
              listTileName: _customDrawerStrings.reviews,
              targetScreen: const ReviewScreen()),
          CustomListTileOne(
              listTileName: CustomDrawerStrings().myProfile,
              targetScreen: ProfileScreen()),
          CustomListTileOne(
              listTileName: _customDrawerStrings.catalogue,
              targetScreen: const CatalogueScreen()),
          CustomListTileOne(
              listTileName: _customDrawerStrings.calendar,
              targetScreen: const CalendarScreen()),
          CustomListTileTwo(
              listTileName: _customDrawerStrings.tobeto,
              icon: const Icon(Icons.home_outlined)),
          DrawerContainerOne(containerName: _customDrawerStrings.userName),
          CustomListTileThree(
              listTileName: CustomDrawerStrings().tobetoCopyrighted)
        ],
      ),
    );
  }
}
