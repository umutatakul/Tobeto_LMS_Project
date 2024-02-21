// CREATE ekleme add
// READ --> firestore da veri getirme get() bir kez / snapshot() anlık
// UPDATE
// DELETE
// Burası kullanıcının datası eklendi mi? silindi mi? güncellendi mi? => firebasestore
// profile bilgilerini

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:tobeto_lms_project/models/user_model.dart';

class UserRepository {
  //Current User ın bilgilerien erişmek için
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  //Database'e bu current user  bilgileri aktarmak için kullanıryoruz.
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  //TODO Path klasörü ile değişkeni dışarı taşı
  final String firestoreColletionPathUsers = "users";

  Future<void> addUserToFirestore(UserModel userModel) async {
    final CollectionReference users =
        _firebaseFirestore.collection(firestoreColletionPathUsers);
    //final userId = _firebaseAuth.currentUser!.uid;
    userModel.userId = _firebaseAuth.currentUser!.uid;

    await users.doc(userModel.userId).set(userModel.toMap());
  }
}
