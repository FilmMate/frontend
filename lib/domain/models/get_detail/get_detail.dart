import 'package:film_mate/domain/models/cast_and_crew.dart/cast_and_crew.dart';
import 'package:json_annotation/json_annotation.dart';
part 'get_detail.g.dart';

@JsonSerializable()
class GetDetail {
  @JsonKey(name: "backdrop_path")
  String? backdropPath;
  @JsonKey(name: "cast")
  List<Cast> cast;
  @JsonKey(name: "crew")
  List<Crew> crew;
  @JsonKey(name: "duration")
  String? duration;
  @JsonKey(name: "genres")
  List<String>? genres;
  @JsonKey(name: "id")
  String? id;
  @JsonKey(name: "lang")
  String? lang;
  @JsonKey(name: "overview")
  String? overview;
  @JsonKey(name: "poster_path")
  String? posterPath;
  @JsonKey(name: "rating")
  double? rating;
  @JsonKey(name: "release_date")
  String? releaseDate;
  @JsonKey(name: "site")
  String? site;
  @JsonKey(name: "title")
  String? title;
  @JsonKey(name: "type")
  String? type;
  @JsonKey(name: "video")
  String? video;

  GetDetail({
    this.backdropPath,
    this.cast = const [],
    this.crew = const [],
    this.duration,
    this.genres,
    this.id,
    this.lang,
    this.overview,
    this.posterPath,
    this.rating,
    this.releaseDate,
    this.site,
    this.title,
    this.type,
    this.video,
  });

  factory GetDetail.fromJson(Map<String, dynamic> json) => GetDetail(
        backdropPath: json['backdrop_path'] as String?,
        cast: (json['cast'] as List<dynamic>)
            .map((e) => Cast.fromJson(e as Map<String, dynamic>))
            .toList(),
        crew: (json['crew'] as List<dynamic>)
            .map((e) => Crew.fromJson(e as Map<String, dynamic>))
            .toList(),
        duration: json['duration'] as String?,
        genres: (json['genres'] as List<dynamic>?)
            ?.map((e) => e.toString())
            .toList(),
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

  Map<String, dynamic> toJson() => {
        'backdrop_path': backdropPath,
        'cast': cast.map((e) => e.toJson()).toList(),
        'crew': crew.map((e) => e.toJson()).toList(),
        'duration': duration,
        'genres': genres,
        'id': id,
        'lang': lang,
        'overview': overview,
        'poster_path': posterPath,
        'rating': rating,
        'release_date': releaseDate,
        'site': site,
        'title': title,
        'type': type,
        'video': video,
      };
}
