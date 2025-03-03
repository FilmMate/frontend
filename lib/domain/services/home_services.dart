import 'package:dartz/dartz.dart';
import 'package:film_mate/core/failure/main_failure.dart';
import 'package:film_mate/domain/models/tmdb/tmdb.dart';

abstract class HomeServices {
  Future<Either<MainFailure, TMDB>> getCarouselList();
  Future<Either<MainFailure, TMDB>> getFilmMateList();
  Future<Either<MainFailure, TMDB>> getFilmMateTvList();
  Future<Either<MainFailure, TMDB>> getTopMovies();
  Future<Either<MainFailure, TMDB>> getTopTv();
  Future<Either<MainFailure, TMDB>> getTopRatedMovies();
  Future<Either<MainFailure, TMDB>> getTopRatedTV();
  Future<Either<MainFailure, TMDB>> getGenre({required int gid});
  Future<Either<MainFailure, TMDB>> getGenreTv({required int gid});
}