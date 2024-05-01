import 'package:json_annotation/json_annotation.dart';
part 'tmdb.g.dart';

@JsonSerializable()
class TMDB {
  @JsonKey(name: 'results')
  List<TMDBResponse> results;

  TMDB({
    this.results = const [],
  });

  factory TMDB.fromJson(Map<String, dynamic> json) {
    return TMDB(
      results: (json['results'] as List<dynamic>)
          .map(
              (e) => TMDBResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'results': results.map((e) => e.toJson()).toList(),
      };
}

class TMDBResponse {
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'poster_path')
  String? posterPath;
  @JsonKey(name: 'media_type')
  String? type;

  TMDBResponse({
    this.backdropPath,
    this.id,
    this.posterPath,
    this.type,
  });

  factory TMDBResponse.fromJson(Map<String, dynamic> json) =>
      TMDBResponse(
        backdropPath: json['backdrop_path'] as String?,
        id: json['id'] as int?,
        posterPath: json['poster_path'] as String?,
        type: json['media_type'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'backdrop_path': backdropPath,
        'id': id,
        'poster_path': posterPath,
        'media_type': type,
      };
}
