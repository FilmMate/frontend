// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tmdb.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TMDB _$TMDBFromJson(Map<String, dynamic> json) => TMDB(
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => TMDBResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    )
      ..page = (json['page'] as num?)?.toInt()
      ..totalPage = (json['total_pages'] as num?)?.toInt();

Map<String, dynamic> _$TMDBToJson(TMDB instance) => <String, dynamic>{
      'page': instance.page,
      'total_pages': instance.totalPage,
      'results': instance.results,
    };
