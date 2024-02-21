import 'package:flutter/material.dart';

class ProfilePictureProfileEdit extends StatelessWidget {
  const ProfilePictureProfileEdit(
      {Key? key, required this.profileEditPictureUrl})
      : super(key: key);
  final String profileEditPictureUrl;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 80,
      backgroundImage: NetworkImage(profileEditPictureUrl),
      child: Container(
        alignment: Alignment.bottomRight,
        child: FloatingActionButton.small(
          onPressed: () {},
          child: const Icon(
            Icons.add,
          ),
        ),
      ),
    );
  }
}
