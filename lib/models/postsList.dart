class Post {
  Post({
    required this.title,
    required this.description,
    required this.author,
    required this.imageUrl,
});
  final String title;
  final String description;
  String author = "";
  String imageUrl = "";

  String toJson() {
    return "{'title: $title, 'description': $description, 'author': $author, 'imageUrl': $imageUrl}";
  }
}