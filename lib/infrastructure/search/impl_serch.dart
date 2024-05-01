import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:film_mate/core/api_key.dart';
import 'package:film_mate/core/failure/main_failure.dart';
import 'package:film_mate/domain/models/endpoints.dart';
import 'package:film_mate/domain/models/tmdb/tmdb.dart';
import 'package:film_mate/domain/services/search_services.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: SearchServices)
class ImplSearch implements SearchServices {
  @override
  Future<Either<MainFailure, TMDB>> getTrending() async{
    const int maxRetries = 5;
    int retryCount = 0;
    while (true) {
      try {
        final Response response = await Dio(BaseOptions()).get(
          EndPoints.getTrendingAll,
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
  Future<Either<MainFailure, TMDB>> getSearchResult({required String query}) async{
    const int maxRetries = 5;
    int retryCount = 0;
    while (true) {
      try {
        final Response response = await Dio(BaseOptions()).get(
          EndPoints.search,
          queryParameters: {
            'api_key': apiKey,
            'query' : query,
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
