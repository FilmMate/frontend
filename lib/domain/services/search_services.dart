import 'package:dartz/dartz.dart';
import 'package:film_mate/core/failure/main_failure.dart';
import 'package:film_mate/domain/models/tmdb/tmdb.dart';

abstract class SearchServices {
  Future<Either<MainFailure, TMDB>> getTrending();
  Future<Either<MainFailure, TMDB>> getSearchResult({
    required String query,
  });
}
