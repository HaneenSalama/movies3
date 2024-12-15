import 'package:dartz/dartz.dart';
import 'package:movies_app/data/datasource/search_data_source.dart';
import 'package:movies_app/model/articlesResponse/Article.dart';
import 'package:movies_app/repository/search_repo.dart';

class SearchRepoIpml implements SearchRepo {
  SearchDataSource dataSource;
  SearchRepoIpml(this.dataSource);

  @override
  Future<Either<List<Article>, String>> getSearchResul(String query) {
    // TODO: implement getSearchResul
    throw UnimplementedError();
  }
}
