import 'package:dartz/dartz.dart';
import 'package:film_mate/core/failure/main_failure.dart';
import 'package:film_mate/domain/models/tmdb/tmdb.dart';

abstract class HomeServices {
  Future<Either<MainFailure, TMDB>> getNowPlaying();
  Future<Either<MainFailure, TMDB>> getTopMovies();
  Future<Either<MainFailure, TMDB>> getTopTv();
  Future<Either<MainFailure, TMDB>> getTopRatedMovies();
  Future<Either<MainFailure, TMDB>> getTopRatedTV();
  Future<Either<MainFailure, TMDB>> getGenre({required int gid});
}