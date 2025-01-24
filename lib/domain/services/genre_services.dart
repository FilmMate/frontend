import 'package:dartz/dartz.dart';
import 'package:film_mate/core/failure/main_failure.dart';

abstract class GenreServices {
  Future<Either<MainFailure, List<Map<String, dynamic>>>> fetchUserGenres();
}