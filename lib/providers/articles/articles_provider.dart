import 'package:flutter/material.dart';
import 'package:news_app/api/api_services.dart';
import 'package:news_app/models/articles.dart';

class ArticlesProvider extends ChangeNotifier {
  final _services = ApiServices();

  bool isLoading = false;
  List<Article> articles = [];

  Future<void> getArticles() async {
    isLoading = true;
    notifyListeners();
    articles = await _services.getArticles();
    isLoading = false;
    notifyListeners();
  }
}
