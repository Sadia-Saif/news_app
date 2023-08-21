class Article {
  late String? author;
  late String title;
  late String description;
  late String url;
  late String urlToImage;
  late String content;

  Article({
    this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.content,
  });

  Article.fromJson(Map<String, dynamic> json) {
    author = json['author'];
    title = json['title'];
    description = json['description'];
    url = json['url'];
    urlToImage = json['urlToImage'];
    content = json['content'];
  }
}
