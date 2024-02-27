import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tobeto_lms_project/models/application__screen_model.dart';

class ApplicationRepository {
  Future<List<ApplicationScreenModel>> getApplication() async {
    CollectionReference collectionRef =
        FirebaseFirestore.instance.collection("application");
    QuerySnapshot snapshot = await collectionRef.get();
    return snapshot.docs
        .map((doc) =>
            ApplicationScreenModel.fromMap(doc.data() as Map<String, dynamic>))
        .toList();
  }
}
