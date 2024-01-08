import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tobeto_lms_project/paths/paths_of_custom_drawer.dart';
import 'package:tobeto_lms_project/strings/custom_drawer_strings.dart';

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
                  IconButton(
                    icon: const Icon(
                      Icons.close_sharp,
                      //color: Colors.grey,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    iconSize: 30,
                  )
                ],
              ),
            ),
          ),
          ListTile(
            title: Text(_customDrawerStrings.mainScreen),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).pushNamed("/home");
            },
          ),
          ListTile(
            title: Text(_customDrawerStrings.reviews),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(_customDrawerStrings.myProfile),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(_customDrawerStrings.catalgue),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(_customDrawerStrings.calendar),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(_customDrawerStrings.tobeto),
            onTap: () {
              Navigator.pop(context);
            },
            //iconColor: Colors.grey,
            trailing: const Padding(
              padding: EdgeInsets.only(right: 170),
              child: Icon(Icons.home_outlined),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              border: Border.all(
                  //color: Colors.grey,
                  ),
              borderRadius: const BorderRadius.all(
                Radius.circular(20.0),
              ),
            ),
            child: ListTile(
              title: Text(_customDrawerStrings.userName),
              trailing: const Padding(
                padding: EdgeInsets.only(right: 10.0),
                child: Icon(Icons.person_sharp),
              ),
            ),
          ),
          ListTile(
            //leading: Icon(Icons.copyright), //Icon olarak eklenmek isterse
            title: Text(_customDrawerStrings.tobetoCopyrighted),
          )
        ],
      ),
    );
  }
}
