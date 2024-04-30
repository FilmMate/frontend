import 'package:dartz/dartz.dart';
import 'package:film_mate/core/failure/main_failure.dart';
import 'package:film_mate/domain/models/get_detail/get_detail.dart';

abstract class DetailServices {
  Future<Either<MainFailure, GetDetail>> getMovieDetail({
    required int id,
  });
  Future<Either<MainFailure, GetDetail>> getTVDetail({
    required int id,
  });
}