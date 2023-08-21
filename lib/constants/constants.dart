const String apiKey = '27836cfc6f964eed93483f67f196e786';
const String baseUrl = 'https://newsapi.org/v2';

String topNewsUrl = "$baseUrl/top-headlines?country=us&apiKey=$apiKey";
String bussinessUrl =
    "$baseUrl/top-headlines?country=us&category=business&apiKey=$apiKey";
String entertainmentUrl =
    "$baseUrl/top-headlines?country=us&category=entertainment&apiKey=$apiKey";
String sportsUrl =
    "$baseUrl/top-headlines?country=us&category=sports&apiKey=$apiKey";
String scienceUrl =
    "$baseUrl/top-headlines?country=us&category=science&apiKey=$apiKey";
String technologyUrl =
    "$baseUrl/top-headlines?country=us&category=technology&apiKey=$apiKey";
