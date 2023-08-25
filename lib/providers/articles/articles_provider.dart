import 'package:flutter/material.dart';
import 'package:news_app/api/api_services.dart';
import 'package:news_app/models/articles.dart';

class ArticlesProvider extends ChangeNotifier {
  final _services = ApiServices();
  bool isLoading = false;
  List<Article> articles = [];

  Future<void> getArticles(String catagoryUrl) async {
    isLoading = true;
    articles = await _services.getArticles(catagoryUrl);
    isLoading = false;
    notifyListeners();
  }
}
