class AnnounceModel {
  AnnounceModel(
      {required this.title, required this.date, this.isReaded = false});
  final String title;
  final String date;
  final bool? isReaded;
}
