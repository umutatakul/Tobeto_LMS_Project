import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String? userId; // doc.set => id'yi alır.
  String? name;
  String? surname;
  String? about;
  String? github;
  String? instagram;
  String? linkedin;
  String? email;
  String? phone;
  String? profilePhoto; // imgURL(String)
  DateTime? dateOfBirth;
  //  dd-mm-yy formatta olmalıdır. => Datetime.now()
  // dd-mm-yy + 20.25 34s 33sls.
  // dd-mm-yy formatter

  UserModel({
    this.name,
    this.surname,
    this.about,
    this.github,
    this.instagram,
    this.linkedin,
    this.profilePhoto,
    this.userId,
    this.email,
    this.phone,
    this.dateOfBirth,
  });
// -------------------------------------------------

// ------------------------- (firestore bilgi çekme:) -------------------------
  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      userId: map['userId'] ?? "",
      email: map['email'] ?? "",
      phone: map['phone'] ?? "",
      name: map['name'] ?? "",
      surname: map['surname'] ?? "",
      about: map['about'] ?? "",
      github: map['github'] ?? "",
      instagram: map['instagram'] ?? "",
      linkedin: map['linkedin'] ?? "",
      profilePhoto: map['profilePhoto'] ?? "",
      dateOfBirth: (map['dateOfBirth'] as Timestamp?)?.toDate(),
    );
  }
// ------------------------- (firestore bilgi gönderme:) -------------------------

// Map<k,v> = entries
// Map<k = key
// Map<v = value

// filtreleme:::

  Map<String, dynamic> toMap() {
    final classMap = _createMap();
    final Map<String, dynamic> map = {};
    for (MapEntry<String, dynamic> entry in classMap.entries) {
      if (entry.value != null) {
        map.addEntries([entry]);
      }
    }
    return map;
  }

// filtereleeme nin amacı: firestor'a null olanları kaydetme.

  Map<String, dynamic> _createMap() {
    // value = email.textcontroller
    return {
      'userId': userId,
      'email': email,
      'phone': phone,
      'name': name,
      'surname': surname,
      'about': about,
      'github': github,
      'instagram': instagram,
      'linkedin': linkedin,
      'profilePhoto': profilePhoto,
      'dateOfBirth': dateOfBirth,
    };
  }
}




//modellemeye ne gerek var???
// ---> profesyonellik

// ---> veri alışverilerinde kullanmak için modelleme ye ihtiyaç duyuyorum.
// (firebase database)  Map<String,dynamic>


// toMap ---> dartı  nesneden haritaya çevir. firebase aktar.   Map<String,dynamic>



// fromMap ---> verilerimi çek haritadan UserModel nesnesi'ne çevir.



