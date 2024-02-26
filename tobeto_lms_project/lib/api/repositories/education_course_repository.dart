import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tobeto_lms_project/models/education_course_model.dart';

class CourseRepository {
  Future<List<EducationCourseModel>> getEducationCourse() async {
    CollectionReference collectionRef =
        FirebaseFirestore.instance.collection("course");
    QuerySnapshot snapshot = await collectionRef.get();
    return snapshot.docs
        .map((doc) =>
            EducationCourseModel.fromMap(doc.data() as Map<String, dynamic>))
        .toList();
  }
}
