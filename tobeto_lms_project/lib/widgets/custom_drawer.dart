import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tobeto_lms_project/api/blocs/profile_bloc/profile_bloc.dart';
import 'package:tobeto_lms_project/api/blocs/profile_bloc/profile_bloc_event.dart';
import 'package:tobeto_lms_project/api/blocs/profile_bloc/profile_bloc_state.dart';
import 'package:tobeto_lms_project/constants/paths/paths_of_custom_drawer.dart';
import 'package:tobeto_lms_project/models/user_model.dart';
import 'package:tobeto_lms_project/screens/calendar_screen.dart';
import 'package:tobeto_lms_project/screens/catalogue_screen.dart';
import 'package:tobeto_lms_project/screens/home_screen.dart';
import 'package:tobeto_lms_project/screens/profile_screen.dart';
import 'package:tobeto_lms_project/screens/review_screen.dart';
import 'package:tobeto_lms_project/constants/strings/custom_drawer_strings.dart';
import 'package:tobeto_lms_project/widgets/custom_drawer_widgets/drawer_buttons/quit_button.dart';
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
              targetScreen: ReviewScreen()),
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

          BlocBuilder<ProfileBloc, ProfileState>(
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
                return DrawerContainerOne(
                    containerName: "${user.name} ${user.surname}");
              }
              return const Center(
                child: Text("Beklenmedik hata"),
              );
            },
          ),
          //const DrawerContainerOne(containerName: "Umut Atakul"),
          CustomListTileThree(
              listTileName: CustomDrawerStrings().tobetoCopyrighted),
          const QuitButton()
        ],
      ),
    );
  }
}
