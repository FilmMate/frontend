// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetDetail _$GetDetailFromJson(Map<String, dynamic> json) => GetDetail(
      backdropPath: json['backdrop_path'] as String?,
      cast: (json['cast'] as List<dynamic>?)
              ?.map((e) => Cast.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      crew: (json['crew'] as List<dynamic>?)
              ?.map((e) => Crew.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      duration: json['duration'] as String?,
      genres:
          (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
      id: json['id'] as String?,
      lang: json['lang'] as String?,
      overview: json['overview'] as String?,
      posterPath: json['poster_path'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      releaseDate: json['release_date'] as String?,
      site: json['site'] as String?,
      title: json['title'] as String?,
      type: json['type'] as String?,
      video: json['video'] as String?,
    );

Map<String, dynamic> _$GetDetailToJson(GetDetail instance) => <String, dynamic>{
      'backdrop_path': instance.backdropPath,
      'cast': instance.cast,
      'crew': instance.crew,
      'duration': instance.duration,
      'genres': instance.genres,
      'id': instance.id,
      'lang': instance.lang,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
      'rating': instance.rating,
      'release_date': instance.releaseDate,
      'site': instance.site,
      'title': instance.title,
      'type': instance.type,
      'video': instance.video,
    };
