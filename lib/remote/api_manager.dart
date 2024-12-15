import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:movies_app/model/articlesResponse/article_response.dart';

class ApiManager {
  getSearchedArticles(String query) {}
//   Future<SourceResponse?> getSources(String category) async {
//     Uri url = Uri.https("newsapi.org", "/v2/top-headlines/sources",
//         {"apiKey": "d3e16e322c2e4c00b4af4967c290a7f", "category": category});
//     var response = await http.get(url);
//     var json = jsonDecode(response.body);
//     var sourceResponse = SourceResponse.fromJson(json);
//     return sourceResponse;
//   }

//   Future<ArticlesResponse?> getArticles(String sourceId) async {
//     Uri url = Uri.https("newsapi.org", "/v2/everything",
//         {"apiKey": "d3e16e322c2e4c00b4af4967c290a7f", "sources": sourceId});
//     var response = await http.get(url);
//     var json = jsonDecode(response.body);
//     var articlesResponse = ArticlesResponse.fromJson(json);
//     return articlesResponse;
//   }

//   Future<ArticlesResponse?> getSearchedArticles(String query) async {
//     Uri url = Uri.https("newsapi.org", "/v2/everything", {
//       "apiKey": "d3e16e322c2e4c00b4af4967c290a7f",
//       "q": query,
//     });
//     var response = await http.get(url);
//     var json = jsonDecode(response.body);
//     var articlesResponse = ArticlesResponse.fromJson(json);
//     return articlesResponse;
//   }
}
