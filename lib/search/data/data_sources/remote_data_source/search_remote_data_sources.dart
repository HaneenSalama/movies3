import 'package:movies_app/search/data/models/movie_model.dart';

abstract class SearchRemoteDataSources {
  Future<List<MovieModel>> getSearchMovies(String query);
}
