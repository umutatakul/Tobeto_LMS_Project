// Repository => Bu klasör veri kaynaklarına erişien ve veri işlemlerini gerçekleştiren depoları içerir.
// aslında biz repositories içerisende firestore istek atıp firestore dan gelen verileri
// de bloc içerisinde yönetiyoruz.
// auth işlemlerini tutar. =>fireaseauth

import 'package:firebase_auth/firebase_auth.dart';

class AuthRepository {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  //----------------LOGİN USER------------------
  Future<void> loginUser(String email, String password) async {
    await _firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
  }

  //----------------CREATE USER-----------------
  Future<void> createUser(
      String email,
      String password,
      //TODO ilk ve ikinci şifre aynılığını denetle
      String confirmPassword) async {
    await _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  //----------------SIGN OUT--------------------
  Future<void> singOutUser() async {
    await _firebaseAuth.signOut();
  }
}
