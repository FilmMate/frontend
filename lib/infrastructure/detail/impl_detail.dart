import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:film_mate/core/api_key.dart';
import 'package:film_mate/core/failure/main_failure.dart';
import 'package:film_mate/domain/models/endpoints.dart';
import 'package:film_mate/domain/models/get_detail/get_detail.dart';
import 'package:film_mate/domain/services/detail_services.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: DetailServices)
class ImplDetail implements DetailServices{
  @override
  Future<Either<MainFailure, GetDetail>> getMovieDetail({required int id}) async{
    const int maxRetries = 2;
    int retryCount = 0;

    while (true) {
      try {
        final Response response = await Dio(BaseOptions()).get(
          EndPoints.getMovie,
          queryParameters: {
            'api_key': apiKey,
            'mid' : id
          },
        );

        if (response.statusCode == 200 || response.statusCode == 201) {
          final result = GetDetail.fromJson(response.data);
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
  Future<Either<MainFailure, GetDetail>> getTVDetail({required int id}) async{
    const int maxRetries = 2;
    int retryCount = 0;

    while (true) {
      try {
        final Response response = await Dio(BaseOptions()).get(
          EndPoints.getTv,
          queryParameters: {
            'api_key': apiKey,
            'tid' : id
          },
        );

        if (response.statusCode == 200 || response.statusCode == 201) {
          final result = GetDetail.fromJson(response.data);
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