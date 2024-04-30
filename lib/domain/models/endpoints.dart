class EndPoints {
  // flask server base url
  static const serverBaseUrl = "https://filmmate.pythonanywhere.com";

  // get latest endpoint
  static const latest = "$serverBaseUrl/getlatest";

  static const getLatestTV = "$serverBaseUrl/getlatesttv";

  // get details
  static const getMovie = "$serverBaseUrl/getmoviedetail";
  static const getTv = "$serverBaseUrl/gettvdetail";

  //image endpoints
  static const image = 'https://image.tmdb.org/t/p/original';
}
