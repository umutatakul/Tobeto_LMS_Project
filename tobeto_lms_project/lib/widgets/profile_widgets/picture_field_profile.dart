import 'package:flutter/material.dart';
import 'package:tobeto_lms_project/data/mock_data.dart';

class PictureFieldProfile extends StatelessWidget {
  PictureFieldProfile({required this.profileUrl, Key? key}) : super(key: key);
  final mockDataFirstCard = ProfileInformationData();
  final String? profileUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        //color: Colors.blue.shade400.withOpacity(0.5),
        color: Theme.of(context).colorScheme.surface.withOpacity(0.7),
        border: Border.all(),
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: ClipOval(
        child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage(profileUrl ??
                        //TODO default profile picture olarak görmüyor
                        "https://static.vecteezy.com/system/resources/previews/009/749/643/original/woman-profile-mascot-illustration-female-avatar-character-icon-cartoon-girl-head-face-business-user-logo-free-vector.jpg"),
                    //NetworkImage(mockDataFirstCard.profilePictureLink),
                    fit: BoxFit.fitHeight))
            // backgroundImage: NetworkImage(
            //     widget.mockDataFirstCard.profilePictureLink),
            //backgroundColor: Colors.blue.shade400.withOpacity(1),
            // child: Image.network(
            //   widget.mockDataFirstCard.profilePictureLink,
            //   width: 120,
            //   height: 120,
            //   fit: BoxFit.cover,
            // ),
            // foregroundImage: NetworkImage(
            //     "https://pbs.twimg.com/profile_images/1681954178195652609/H44jVFCp_400x400.jpg"),
            ),
      ),
    );
  }
}
