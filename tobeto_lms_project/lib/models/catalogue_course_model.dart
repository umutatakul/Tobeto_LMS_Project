class CatalogueCourseModel {
  final String id;
  final String name;
  final double rating;
  final String author;
  final String imgUrl;

  CatalogueCourseModel({
    this.imgUrl = "https://img.lovepik.com/element/45008/9232.png_860.png",
    required this.id,
    required this.name,
    this.rating = 4,
    required this.author,
  });
}
