import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

class StorageRepository {
  final FirebaseStorage _firebaseStorage = FirebaseStorage.instance;
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future uploadPhoto(File imageUrl) async {
    //// Kullanıcının anlık bilgisini aldım ()
    //
    User? _currentUserInformation = _firebaseAuth.currentUser!;
    // Fotoğrafı göndermeden önce referans veriyorum

    final ref = _firebaseStorage
        .ref()
        .child("ProfileImages/${_currentUserInformation.uid}.png");
    // put file diyerek fotoğrafı göndereceğiz

    await ref.putFile(imageUrl);

    // Yükleme işlemi tamamlandıktan sonra indirme linkini firestore akaydetme işlemni yapıyorum

    final downloadUrl = await ref.getDownloadURL();

    // Users colection içine ekleme işlemini gerçekleştiriyor.

    await _firebaseFirestore
        .collection("users")
        .doc(_currentUserInformation.uid)
        //set deseydik üstüne durmadan ekleeycekti
        .update({
      "profilePhoto": downloadUrl,
      "userId": _currentUserInformation.uid
    });

    //
  }
}
