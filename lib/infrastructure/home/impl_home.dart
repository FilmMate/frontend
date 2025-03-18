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
  Future<Either<MainFailure, TMDB>> getCarouselList() async {
    const int maxRetries = 5;
    int retryCount = 0;
    while (true) {
      try {
        final Response response = await Dio(BaseOptions()).get(
          EndPoints.getHero,
          queryParameters: {
            'api_key': apiKey,
          },
        );
        if (response.statusCode == 200 || response.statusCode == 203) {
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
        final List<String> aniLang = ['en', 'ja'];
        final Response response = await Dio(BaseOptions()).get(
          EndPoints.genreSearch,
          queryParameters: {
            'api_key': apiKey,
            'with_genres': gid,
            'with_original_language': gid == 16
                ? aniLang[Random().nextInt(2)]
                : lang[Random().nextInt(4)],
            'sort_by': 'popularity.desc'
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
  Future<Either<MainFailure, TMDB>> getGenreTv({required int gid}) async {
    const int maxRetries = 10;
    int retryCount = 0;
    while (true) {
      try {
        final List<String> lang = ['ja', 'ko', 'en', 'de'];
        final Response response = await Dio(BaseOptions()).get(
          EndPoints.genreSearchTv,
          queryParameters: {
            'api_key': apiKey,
            'with_genres': gid,
            'with_original_language': lang[Random().nextInt(4)],
            'sort_by': 'popularity.desc'
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
  Future<Either<MainFailure, TMDB>> getFilmMateList() async {
    const int maxRetries = 5;

    for (int retryCount = 1; retryCount <= maxRetries; retryCount++) {
      try {
        final Response response = await Dio(
          BaseOptions(
            validateStatus: (status) {
              // Allow all status codes to be handled manually
              return true;
            },
          ),
        ).get(EndPoints.movieList);

        log("Endpoint: ${EndPoints.getMovie}");
        log("Response status code: ${response.statusCode}");

        if (response.statusCode == 200 || response.statusCode == 203) {
          final result = TMDB.fromJson(response.data);
          return Right(result);
        } else if (response.statusCode == 500) {
          log("Server error: 500. Retrying attempt $retryCount of $maxRetries...");
        } else {
          log("Unexpected status code: ${response.statusCode}");
          return const Left(MainFailure.serverFailure());
        }
      } on DioException catch (dioError) {
        log("DioException: ${dioError.message}");
        if (retryCount == maxRetries) {
          return const Left(MainFailure.clientFailure());
        }
      } catch (e) {
        log("Unexpected error: $e");
        return const Left(MainFailure.clientFailure());
      }

      // Introduce an exponential backoff delay
      await Future.delayed(Duration(milliseconds: 500 * retryCount));
    }

    return const Left(MainFailure.clientFailure());
  }

  @override
  Future<Either<MainFailure, TMDB>> getFilmMateTvList() async {
    const int maxRetries = 5;

    for (int retryCount = 1; retryCount <= maxRetries; retryCount++) {
      try {
        final Response response = await Dio(
          BaseOptions(
            validateStatus: (status) {
              // Allow all status codes to be handled manually
              return true;
            },
          ),
        ).get(EndPoints.tvList);

        log("Endpoint: ${EndPoints.getMovie}");
        log("Response status code: ${response.statusCode}");

        if (response.statusCode == 200 || response.statusCode == 203) {
          final result = TMDB.fromJson(response.data);
          return Right(result);
        } else if (response.statusCode == 500) {
          log("Server error: 500. Retrying attempt $retryCount of $maxRetries...");
        } else {
          log("Unexpected status code: ${response.statusCode}");
          return const Left(MainFailure.serverFailure());
        }
      } on DioException catch (dioError) {
        log("DioException: ${dioError.message}");
        if (retryCount == maxRetries) {
          return const Left(MainFailure.clientFailure());
        }
      } catch (e) {
        log("Unexpected error: $e");
        return const Left(MainFailure.clientFailure());
      }

      // Introduce an exponential backoff delay
      await Future.delayed(Duration(milliseconds: 500 * retryCount));
    }

    return const Left(MainFailure.clientFailure());
  }

  @override
  Future<Either<MainFailure, TMDB>> getMovieByLanguage(
      {required String language, int? gid}) async {
    const int maxRetries = 5;

    for (int retryCount = 1; retryCount <= maxRetries; retryCount++) {
      try {
        Map<String, dynamic>? params = {
          'api_key': apiKey,
          'with_original_language': language,
        };

        if (gid != null) {
          params = {
            'api_key': apiKey,
            'with_genres': gid,
            'with_original_language': language,
          };
        }

        final Response response = await Dio(BaseOptions()).get(
          EndPoints.genreSearch,
          queryParameters: params,
        );

        log("Language filter with gid = $gid -> success");
        if (response.statusCode == 200 || response.statusCode == 203) {
          final result = TMDB.fromJson(response.data);
          return Right(result);
        } else if (response.statusCode == 500) {
          log("Server error: 500. Retrying attempt $retryCount of $maxRetries...");
        } else {
          log("Unexpected status code: ${response.statusCode}");
          return const Left(MainFailure.serverFailure());
        }
      } on DioException catch (dioError) {
        log("DioException: ${dioError.message}");
        if (retryCount == maxRetries) {
          return const Left(MainFailure.clientFailure());
        }
      } catch (e) {
        log("Unexpected error: $e");
        return const Left(MainFailure.clientFailure());
      }

      // Introduce an exponential backoff delay
      await Future.delayed(Duration(milliseconds: 500 * retryCount));
    }

    return const Left(MainFailure.clientFailure());
  }
}
