import 'package:dartz/dartz.dart';
import 'package:film_mate/core/failure/main_failure.dart';
import 'package:film_mate/domain/models/get_latest/get_latest.dart';
import 'package:film_mate/domain/models/get_latest_tv/get_latest_tv.dart';

abstract class ExploreServices {
  Future<Either<MainFailure, GetLatest>> getLatestMovies({
    required String lang,
  });
  Future<Either<MainFailure, GetLatestTv>> getLatestTV();
}
