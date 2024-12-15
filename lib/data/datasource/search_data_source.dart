import 'package:dartz/dartz.dart';
import 'package:dartz/dartz_streaming.dart';

abstract class SearchDataSource {
  Future<Either<List<Source>, String>> getSearchResul(String query);
}
