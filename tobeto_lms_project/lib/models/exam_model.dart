class ExamModel {
  final String title;
  final String subTitle;
  final String duration;
  final String declaration;
  final String questionPcs;
  final String examType;
  final bool isExamCompleted;
  final String headerImage;

  ExamModel({
    required this.title,
    required this.subTitle,
    required this.duration,
    required this.declaration,
    required this.questionPcs,
    required this.examType,
    required this.isExamCompleted,
    required this.headerImage,
  });

  factory ExamModel.fromMap(Map<String, dynamic> map) {
    return ExamModel(
      title: map['title'] ?? '',
      subTitle: map['subTitle'] ?? '',
      duration: map['duration'] ?? '',
      declaration: map['declaration'] ?? '',
      questionPcs: map['questionPcs'] ?? '',
      examType: map['examType'] ?? '',
      isExamCompleted: map['isExamCompleted'] ?? false,
      headerImage: map['headerImage'] ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'subTitle': subTitle,
      'duration': duration,
      'declaration': declaration,
      'questionPcs': questionPcs,
      'examType': examType,
      'isExamCompleted': isExamCompleted,
      'headerImage': headerImage,
    };
  }
}
