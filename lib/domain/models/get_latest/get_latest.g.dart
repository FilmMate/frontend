// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_latest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetLatest _$GetLatestFromJson(Map<String, dynamic> json) => GetLatest(
      result: (json['result'] as List<dynamic>?)
              ?.map(
                  (e) => GetLatestResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$GetLatestToJson(GetLatest instance) => <String, dynamic>{
      'result': instance.result,
    };

GetLatestResponse _$GetLatestResponseFromJson(Map<String, dynamic> json) =>
    GetLatestResponse(
      backdropPath: json['backdrop_path'] as String?,
      duration: json['duration'] as String?,
      genres: (json['genres'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      id: json['id'] as int?,
      overview: json['overview'] as String?,
      posterPath: json['poster_path'] as String?,
      title: json['title'] as String?,
      video: json['video'] as String?,
    )..lang = json['lang'] as String?;

Map<String, dynamic> _$GetLatestResponseToJson(GetLatestResponse instance) =>
    <String, dynamic>{
      'backdrop_path': instance.backdropPath,
      'duration': instance.duration,
      'genres': instance.genres,
      'id': instance.id,
      'lang': instance.lang,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
      'title': instance.title,
      'video': instance.video,
    };
