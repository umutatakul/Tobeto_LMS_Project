class AnnounceModel {
  final String title;
  final String date;
  final bool isReaded;

  AnnounceModel({
    required this.title,
    required this.date,
    this.isReaded = false,
  });

  factory AnnounceModel.fromMap(Map<String, dynamic> map) {
    return AnnounceModel(
      title: map['title'] ?? '',
      date: map['date'] ?? '',
      isReaded: map['isReaded'] ?? false,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'date': date,
      'isReaded': isReaded,
    };
  }
}
