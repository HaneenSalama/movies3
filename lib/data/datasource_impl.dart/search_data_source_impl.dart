import 'package:dartz/dartz.dart';
import 'package:dartz/dartz_streaming.dart';
import 'package:movies_app/data/datasource/search_data_source.dart';
import 'package:movies_app/remote/api_manager.dart';

class SeachDataSourceImpl implements SearchDataSource {
  ApiManager apiManager;

  SeachDataSourceImpl(this.apiManager);

  @override
  Future<Either<List<Source>, String>> getSearchResul(String query) async {
    var response = await apiManager.getSearchedArticles(query);

    if (response?.status == "error") {
      return Right(response?.message ?? "Something went wrong");
    } else {
      return left(response?.articles ?? []);
    }
  }
}
