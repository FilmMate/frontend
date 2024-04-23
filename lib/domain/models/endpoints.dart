import 'package:film_mate/core/api_key.dart';

class EndPoints {
  // flask server base url
  static const serverBaseUrl = "https://filmmate.pythonanywhere.com";

  // get latest endpoint
  static const latest = "$serverBaseUrl/getlatest?api_key=$apiKey";

  //image endpoints
  static const image = 'https://image.tmdb.org/t/p/original';
}
