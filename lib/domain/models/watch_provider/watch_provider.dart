import 'package:json_annotation/json_annotation.dart';
part 'watch_provider.g.dart';

@JsonSerializable()
class WatchProvider {
  int? id;
  @JsonKey(name: 'results')
  Results? results;

  WatchProvider({this.id, this.results});

  factory WatchProvider.fromJson(Map<String, dynamic> json) => WatchProvider(
        id: json['id'] as int?,
        results: json['results'] == null
            ? null
            : Results.fromJson(json['results'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'results': results?.toJson(),
      };
}

class Results {
  @JsonKey(name: 'IN')
  In? india;

  Results({this.india});

  factory Results.fromJson(Map<String, dynamic> json) => Results(
        india: json['IN'] == null
            ? null
            : In.fromJson(json['IN'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'IN': india?.toJson(),
      };
}

class Flatrate {
  @JsonKey(name: 'logo_path')
  String? logoPath;
  int? providerId;
  @JsonKey(name: 'provider_name')
  String? providerName;
  int? displayPriority;

  Flatrate({
    this.logoPath,
    this.providerId,
    this.providerName,
    this.displayPriority,
  });

  factory Flatrate.fromJson(Map<String, dynamic> json) => Flatrate(
        logoPath: json['logo_path'] as String?,
        providerId: json['provider_id'] as int?,
        providerName: json['provider_name'] as String?,
        displayPriority: json['display_priority'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'logo_path': logoPath,
        'provider_id': providerId,
        'provider_name': providerName,
        'display_priority': displayPriority,
      };
}

class In {
  @JsonKey(name: 'link')
  String? link;
  @JsonKey(name: 'flatrate')
  List<Flatrate>? flatrate;

  In({this.link, this.flatrate});

  factory In.fromJson(Map<String, dynamic> json) => In(
        link: json['link'] as String?,
        flatrate: (json['flatrate'] as List<dynamic>?)
            ?.map((e) => Flatrate.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'link': link,
        'flatrate': flatrate?.map((e) => e.toJson()).toList(),
      };
}
