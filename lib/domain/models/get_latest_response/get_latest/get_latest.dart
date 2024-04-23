import 'package:json_annotation/json_annotation.dart';

part 'get_latest.g.dart';

@JsonSerializable()
class GetLatest {
  @JsonKey(name: 'result')
  List<GetLatestResponse> result;

  GetLatest({this.result = const []});

  factory GetLatest.fromJson(Map<String, dynamic> json) => GetLatest(
        result: (json['result'] as List<dynamic>)
            .map((e) => GetLatestResponse.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'result': result.map((e) => e.toJson()).toList(),
      };
}

@JsonSerializable()
class GetLatestResponse {
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;
  @JsonKey(name: 'duration')
  String? duration;
  @JsonKey(name: 'genres')
  List<String>? genres;
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'lang')
  String? lang;
  @JsonKey(name: 'overview')
  String? overview;
  @JsonKey(name: 'poster_path')
  String? posterPath;
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'video')
  String? video;

  GetLatestResponse({
    this.backdropPath,
    this.duration,
    this.genres = const [],
    this.id,
    this.overview,
    this.posterPath,
    this.title,
    this.video,
  });

  factory GetLatestResponse.fromJson(Map<String, dynamic> json) {
  return GetLatestResponse(
    backdropPath: json['backdrop_path'] as String?,
    duration: json['duration'] as String?,
    genres: (json['genres'] as List<dynamic>?)?.map((e) => e.toString()).toList(),
    id: json['id'] as int?,
    overview: json['overview'] as String?,
    posterPath: json['poster_path'] as String?,
    title: json['title'] as String?,
    video: json['video'] as String?,
  );
}


  Map<String, dynamic> toJson() => {
        'backdrop_path': backdropPath,
        'genres': genres,
        'id': id,
        'overview': overview,
        'poster_path': posterPath,
        'title': title,
        'video': video,
        'duration': duration
      };
}
