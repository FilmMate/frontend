import 'package:film_mate/domain/models/cast_and_crew.dart/cast_and_crew.dart';
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
  @JsonKey(name: 'release_date')
  String? releaseDate;
  @JsonKey(name: 'rating')
  double? rating;
  @JsonKey(name: 'cast')
  List<Cast>? cast;
  @JsonKey(name: 'crew')
  List<Crew>? crew;

  GetLatestResponse({
    this.backdropPath,
    this.duration,
    this.genres = const [],
    this.id,
    this.overview,
    this.posterPath,
    this.title,
    this.video,
    this.cast, 
		this.crew, 
    this.rating,
    this.lang,
    this.releaseDate
  });

  factory GetLatestResponse.fromJson(Map<String, dynamic> json) {
    return GetLatestResponse(
      backdropPath: json['backdrop_path'] as String?,
      duration: json['duration'] as String?,
      genres:
          (json['genres'] as List<dynamic>?)?.map((e) => e.toString()).toList(),
      id: json['id'] as int?,
      overview: json['overview'] as String?,
      posterPath: json['poster_path'] as String?,
      title: json['title'] as String?,
      video: json['video'] as String?,
      rating : json['rating'] as double?,
      lang : json['lang'] as String?,
      releaseDate: json['release_date'] as String?,
      cast: (json['cast'] as List<dynamic>?)
						?.map((e) => Cast.fromJson(e as Map<String, dynamic>))
						.toList(),
				crew: (json['crew'] as List<dynamic>?)
						?.map((e) => Crew.fromJson(e as Map<String, dynamic>))
						.toList(),
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
        'duration': duration,
        'rating' : rating,
        'lang' : lang,
        'releaseDate' : releaseDate,
        'cast' : cast,
        'crew' : crew,
      };
}

