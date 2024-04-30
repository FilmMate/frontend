class Crew {
  String? job;
  String? name;

  Crew({this.job, this.name});

  factory Crew.fromJson(Map<String, dynamic> json) => Crew(
        job: json['job'] as String?,
        name: json['name'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'job': job,
        'name': name,
      };
}

class Cast {
  String? character;
  String? name;

  Cast({this.character, this.name});

  factory Cast.fromJson(Map<String, dynamic> json) => Cast(
        character: json['character'] as String?,
        name: json['name'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'character': character,
        'name': name,
      };
}
