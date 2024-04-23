import 'package:dartz/dartz.dart';
import 'package:film_mate/core/failure/main_failure.dart';
import 'package:film_mate/domain/models/get_latest_response/get_latest/get_latest.dart';


abstract class ExploreServices {
  Future<Either<MainFailure, GetLatest>> getLatestMovies(
      {required String lang});
}
