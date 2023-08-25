import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:news_app/models/articles.dart';

class ApiServices {
  final client = http.Client();

  Future<List<Article>> getArticles(String url) async {
    List<Article> articles = [];
    final uri = Uri.parse(url);
    var response = await client.get(uri);
    var jsonData = jsonDecode(response.body);
    if (response.statusCode == 200) {
      jsonData['articles'].forEach((json) {
        if (json['url'] != null &&
            json['urlToImage'] != null &&
            json['description'] != null &&
            json['content'] != null) {
          Article article = Article.fromJson(json);
          articles.add(article);
        }
      });
      return articles;
    } else {
      throw Exception('Failed to load post');
    }
  }
}
