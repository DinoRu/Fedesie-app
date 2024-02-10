
class Item {
  final int id;
  final String title;
  final String image;
  final String description;
  final String url;
  final DateTime createdAt;
  double price = 0.0;

  Item({
    required this.id,
    required this.title,
    required this.image,
    required this.url,
    required this.description,
    required this.createdAt,
  });


}