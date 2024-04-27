import 'package:json_annotation/json_annotation.dart';

part 'get_latest_tv.g.dart';

@JsonSerializable()
class GetLatestTv {
  @JsonKey(name: "result")
	List<GetLatestTvResponse> result;

	GetLatestTv({this.result = const []});

	factory GetLatestTv.fromJson(Map<String, dynamic> json) => GetLatestTv(
				result: (json['result'] as List<dynamic>)
						.map((e) => GetLatestTvResponse.fromJson(e as Map<String, dynamic>))
						.toList(),
			);

	Map<String, dynamic> toJson() => {
				'result': result.map((e) => e.toJson()).toList(),
			};
}

class GetLatestTvResponse {
  @JsonKey(name: "backdrop_path")
	String? backdropPath;
  @JsonKey(name: "genres")
	List<String>? genres;
  @JsonKey(name: "id")
	int? id;
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

	GetLatestTvResponse({
		this.backdropPath, 
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

	factory GetLatestTvResponse.fromJson(Map<String, dynamic> json) => GetLatestTvResponse(
				backdropPath: json['backdrop_path'] as String?,
				genres: (json['genres'] as List<dynamic>?)?.map((e) => e.toString()).toList(),
				id: json['id'] as int?,
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
