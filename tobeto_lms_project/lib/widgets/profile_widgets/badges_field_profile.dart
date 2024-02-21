import 'package:flutter/material.dart';
import 'package:tobeto_lms_project/data/mock_data.dart';
import 'package:tobeto_lms_project/widgets/profile_widgets/customize_container_profile.dart';

class BadgesFieldProfile extends StatelessWidget {
  BadgesFieldProfile({Key? key}) : super(key: key);
  final badgeList = ProfileInformationData().badgesList;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return CustomizeContainerProfile(
      title: "Yetkinlik rozetlerim",
      widgetOfInside: Center(
        child: Column(
          children: [
            //Sized box eklemeden girdview çalışmıyor
            SizedBox(
              height: size.height / 2,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemCount: ProfileInformationData().badgesList.length,
                itemBuilder: (context, index) {
                  return Image.network(badgeList[index]);
                },
              ),
            )
            // for (var selectedBagde in ProfileInformationData().badgesList)
            //   Image.network(selectedBagde)
          ],
        ),
      ),
    );
  }
}
