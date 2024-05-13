import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:film_mate/core/api_key.dart';
import 'package:film_mate/core/failure/main_failure.dart';
import 'package:film_mate/domain/models/endpoints.dart';
import 'package:film_mate/domain/models/tmdb/tmdb.dart';
import 'package:film_mate/domain/services/home_services.dart';
import 'package:injectable/injectable.dart';
import 'dart:math' show Random;

@LazySingleton(as: HomeServices)
class ImplHome implements HomeServices {
  @override
  Future<Either<MainFailure, TMDB>> getNowPlaying() async {
    const int maxRetries = 5;
    int retryCount = 0;
    while (true) {
      try {
        final Response response = await Dio(BaseOptions()).get(
          EndPoints.getNowPlaying,
          queryParameters: {
            'api_key': apiKey,
          },
        );
        if (response.statusCode == 200 || response.statusCode == 201) {
          final result = TMDB.fromJson(response.data);
          return Right(result);
        } else {
          return const Left(MainFailure.serverFailure());
        }
      } catch (e) {
        log(e.toString());
        retryCount++;
        if (retryCount <= maxRetries) {
          // Retry if there are remaining retries
          log('Retrying... Attempt $retryCount of $maxRetries');
          continue; // Continue to the next iteration of the while loop
        } else {
          return const Left(MainFailure.clientFailure());
        }
      }
    }
  }

  @override
  Future<Either<MainFailure, TMDB>> getTopMovies() async {
    const int maxRetries = 5;
    int retryCount = 0;
    while (true) {
      try {
        final Response response = await Dio(BaseOptions()).get(
          EndPoints.getTrendingMovie,
          queryParameters: {
            'api_key': apiKey,
          },
        );
        if (response.statusCode == 200 || response.statusCode == 201) {
          final result = TMDB.fromJson(response.data);
          return Right(result);
        } else {
          return const Left(MainFailure.serverFailure());
        }
      } catch (e) {
        log(e.toString());
        retryCount++;
        if (retryCount <= maxRetries) {
          // Retry if there are remaining retries
          log('Retrying... Attempt $retryCount of $maxRetries');
          continue; // Continue to the next iteration of the while loop
        } else {
          return const Left(MainFailure.clientFailure());
        }
      }
    }
  }

  @override
  Future<Either<MainFailure, TMDB>> getTopTv() async {
    const int maxRetries = 5;
    int retryCount = 0;
    while (true) {
      try {
        final Response response = await Dio(BaseOptions()).get(
          EndPoints.getTrendingTv,
          queryParameters: {
            'api_key': apiKey,
          },
        );
        if (response.statusCode == 200 || response.statusCode == 201) {
          final result = TMDB.fromJson(response.data);
          return Right(result);
        } else {
          return const Left(MainFailure.serverFailure());
        }
      } catch (e) {
        log(e.toString());
        retryCount++;
        if (retryCount <= maxRetries) {
          // Retry if there are remaining retries
          log('Retrying... Attempt $retryCount of $maxRetries');
          continue; // Continue to the next iteration of the while loop
        } else {
          return const Left(MainFailure.clientFailure());
        }
      }
    }
  }

  @override
  Future<Either<MainFailure, TMDB>> getTopRatedMovies() async {
    const int maxRetries = 10;
    int retryCount = 0;
    while (true) {
      try {
        final Response response = await Dio(BaseOptions()).get(
          EndPoints.topRatedMovies,
          queryParameters: {
            'api_key': apiKey,
          },
        );
        if (response.statusCode == 200 || response.statusCode == 201) {
          final result = TMDB.fromJson(response.data);
          return Right(result);
        } else {
          return const Left(MainFailure.serverFailure());
        }
      } catch (e) {
        log(e.toString());
        retryCount++;
        if (retryCount <= maxRetries) {
          // Retry if there are remaining retries
          log('Retrying... Attempt $retryCount of $maxRetries');
          continue; // Continue to the next iteration of the while loop
        } else {
          return const Left(MainFailure.clientFailure());
        }
      }
    }
  }

  @override
  Future<Either<MainFailure, TMDB>> getTopRatedTV() async {
    const int maxRetries = 10;
    int retryCount = 0;
    while (true) {
      try {
        final Response response = await Dio(BaseOptions()).get(
          EndPoints.topRatedTV,
          queryParameters: {
            'api_key': apiKey,
          },
        );
        if (response.statusCode == 200 || response.statusCode == 201) {
          final result = TMDB.fromJson(response.data);
          return Right(result);
        } else {
          return const Left(MainFailure.serverFailure());
        }
      } catch (e) {
        log(e.toString());
        retryCount++;
        if (retryCount <= maxRetries) {
          // Retry if there are remaining retries
          log('Retrying... Attempt $retryCount of $maxRetries');
          continue; // Continue to the next iteration of the while loop
        } else {
          return const Left(MainFailure.clientFailure());
        }
      }
    }
  }

  @override
  Future<Either<MainFailure, TMDB>> getGenre({required int gid}) async {
    const int maxRetries = 10;
    int retryCount = 0;
    while (true) {
      try {
        final List<String> lang = ['ml', 'en', 'ta', 'hi'];
        final Response response = await Dio(BaseOptions()).get(
          EndPoints.genreSearch,
          queryParameters: {
            'api_key': apiKey,
            'with_genres': gid,
            'with_original_language': lang[Random().nextInt(4)],
            'sort_by' : 'popularity.desc'
          },
        );
        if (response.statusCode == 200 || response.statusCode == 201) {
          final result = TMDB.fromJson(response.data);
          return Right(result);
        } else {
          return const Left(MainFailure.serverFailure());
        }
      } catch (e) {
        log(e.toString());
        retryCount++;
        if (retryCount <= maxRetries) {
          // Retry if there are remaining retries
          log('Retrying... Attempt $retryCount of $maxRetries');
          continue; // Continue to the next iteration of the while loop
        } else {
          return const Left(MainFailure.clientFailure());
        }
      }
    }
  }
}
