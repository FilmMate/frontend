import 'package:film_mate/domain/models/user/genre.dart';
import 'package:hive_flutter/hive_flutter.dart';


part 'user_model.g.dart';

@HiveType(typeId: 0)
class User {
  @HiveField(0)
  String username;

  @HiveField(1)
  String password;

  @HiveField(2)
  List<Genre> genres;

  @HiveField(3)
  String email;

  User({
    required this.username,
    required this.password,
    required this.genres,
    required this.email,
  });
}
