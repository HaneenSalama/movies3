import 'package:dartz/dartz.dart';
import 'package:movies_app/model/articlesResponse/Article.dart';

abstract class SearchRepo {
  Future<Either<List<Article>, String>> getSearchResul(String query);
}
