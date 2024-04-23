import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:film_mate/core/api_key.dart';
import 'package:film_mate/core/failure/main_failure.dart';
import 'package:film_mate/domain/models/endpoints.dart';
import 'package:film_mate/domain/models/get_latest_response/get_latest/get_latest.dart';
import 'package:film_mate/domain/services/explore_services.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ExploreServices)
class GetLastestImpl implements ExploreServices {
  @override
  Future<Either<MainFailure, GetLatest>> getLatestMovies(
      {required String lang}) async {
    try {
      final Response response = await Dio(BaseOptions())
          .get(EndPoints.latest, queryParameters: {'lang': lang});
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = GetLatest.fromJson(response.data);
        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }
}
