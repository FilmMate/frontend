
import 'package:hive_flutter/hive_flutter.dart';

part 'genre.g.dart';

@HiveType(typeId: 1)
class Genre {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final int gid;

  Genre({required this.name, required this.gid});
}