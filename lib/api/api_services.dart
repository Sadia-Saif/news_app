import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:news_app/models/articles.dart';

class NewsApi {
  final String apiKey = '27836cfc6f964eed93483f67f196e786';
  final String baseUrl = 'https://newsapi.org/v2';

  Future<List<Article>> getTopHeadlines() async {
    final response = await http
        .get(Uri.parse('$baseUrl/top-headlines?country=us&apiKey=$apiKey'));

    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = json.decode(response.body);
      final List<dynamic> articlesData = responseData['articles'];

      return articlesData
          .map((articleData) => Article.fromJson(articleData))
          .toList();
    } else {
      throw Exception('Failed to load top headlines');
    }
  }
}
