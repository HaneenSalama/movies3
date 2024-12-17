import 'package:flutter/material.dart';
import 'package:movies_app/search/data/data_sources/remote_data_source/search_remote_api_data_source.dart';
import 'package:movies_app/search/data/models/movie_model.dart';

class SearchViewModel extends ChangeNotifier {
  final dataSource = SearchRemoteApiDateSource();
  List<MovieModel> movies = [];
  bool isLoading = false;
  String? errorMessage;
  String? queryResult;

  Future<void> getSearchMovies(String query) async {
    isLoading = true;
    notifyListeners();
    try {
      movies = await dataSource.getSearchMovies(query);
    } catch (error) {
      errorMessage = error.toString();
    }
    isLoading = false;
    notifyListeners();
  }

  Future<void> clearSearchMovies({bool icon = false}) async {
    queryResult = '';
    movies = [];
    errorMessage = null;
    if (icon) {
      notifyListeners();
    }
  }
}
