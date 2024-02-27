class ApplicationScreenModel {
  final String status;
  final String organizationName;

  ApplicationScreenModel({
    required this.status,
    required this.organizationName,
  });

  factory ApplicationScreenModel.fromMap(Map<String, dynamic> map) {
    return ApplicationScreenModel(
      status: map['status'] ?? '',
      organizationName: map['organizationName'] ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'status': status,
      'organizationName': organizationName,
    };
  }
}
