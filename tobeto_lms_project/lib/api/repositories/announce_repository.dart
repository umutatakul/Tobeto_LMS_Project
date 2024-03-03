import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tobeto_lms_project/models/announce_model.dart';

class AnnounceRepository {
  Future<List<AnnounceModel>> getAnnounce() async {
    CollectionReference collectionRef =
        FirebaseFirestore.instance.collection("announce");
    QuerySnapshot snapshot = await collectionRef.get();
    return snapshot.docs
        .map((doc) => AnnounceModel.fromMap(doc.data() as Map<String, dynamic>))
        .toList();
  }
}
