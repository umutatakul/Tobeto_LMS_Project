import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

//Bu sayfa atıllasştı direkt olarak indvudual information a taşıdım
class ProfilePictureProfileEdit extends StatefulWidget {
  const ProfilePictureProfileEdit({
    Key? key,
  }) : super(key: key);
  // final String profileEditPictureUrl;

  @override
  State<ProfilePictureProfileEdit> createState() =>
      _ProfilePictureProfileEditState();
}

class _ProfilePictureProfileEditState extends State<ProfilePictureProfileEdit> {
  final ImagePicker _imagePicker = ImagePicker();
  File? _selectedPhoto;

  Future photoPick() async {
    //Galeri yolu (path) beliritiliyor
    final image = await _imagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (image != null) {
        _selectedPhoto = File(image.path);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => photoPick(),
      child: Container(
          child: _selectedPhoto != null
              ? CircleAvatar(
                  radius: 80,
                  backgroundImage: FileImage(_selectedPhoto!),
                  child: Container(
                    alignment: Alignment.bottomRight,
                    child: FloatingActionButton.small(
                      onPressed: () {
                        photoPick();
                      },
                      child: const Icon(
                        Icons.add,
                      ),
                    ),
                  ),
                )
              : const CircleAvatar(
                  radius: 80,
                  backgroundImage: NetworkImage(
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/Portrait_of_Ruhollah_Khomeini_By_Mohammad_Sayyad.jpg/650px-Portrait_of_Ruhollah_Khomeini_By_Mohammad_Sayyad.jpg"))),
    );
  }
}
// CircleAvatar(
//       radius: 80,
//       backgroundImage: FileImage(_selectedPhoto),
//       child: Container(
//         alignment: Alignment.bottomRight,
//         child: FloatingActionButton.small(
//           onPressed: () {
//             photoPick();
//           },
//           child: const Icon(
//             Icons.add,
//           ),
//         ),
//       ),
//     );

