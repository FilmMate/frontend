import 'package:dartz/dartz.dart';
import 'package:film_mate/core/failure/main_failure.dart';
import 'package:film_mate/domain/models/get_detail/get_detail.dart';
import 'package:film_mate/domain/models/tmdb/tmdb.dart';
import 'package:film_mate/domain/models/watch_provider/watch_provider.dart';

abstract class DetailServices {
  Future<Either<MainFailure, GetDetail>> getMovieDetail({
    required int id,
  });
  Future<Either<MainFailure, GetDetail>> getTVDetail({
    required int id,
  });

  Future<Either<MainFailure, TMDB>> getSimilar({
    required int id,
    required String type,
  });

  Future<Either<MainFailure, WatchProvider>> getProvider({
    required int id,
    required String type,
  });
}
