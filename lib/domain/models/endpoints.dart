class EndPoints {
  // flask server base url
  static const serverBaseUrl = "https://filmmate.pythonanywhere.com";

  // tmdb base url
  static const tmdbBaseUrl = "https://api.themoviedb.org/3";

  // get latest movie
  static const latest = "$serverBaseUrl/getlatest";

  // get latest tv
  static const getLatestTV = "$serverBaseUrl/getlatesttv";

  // get details
  static const getMovie = "$serverBaseUrl/getmoviedetail";
  static const getTv = "$serverBaseUrl/gettvdetail";

  //image endpoints
  static const image = 'https://image.tmdb.org/t/p/original';

  // tmdb now playing movies
  static const getNowPlaying = "$tmdbBaseUrl/movie/now_playing";

  // tmdb trending all (movie + tv)
  static const getTrendingAll = "$tmdbBaseUrl/trending/all/day";

  //tmdb trending movie
  static const getTrendingMovie = "$tmdbBaseUrl/trending/movie/day";

  //tmdb trending tv
  static const getTrendingTv = "$tmdbBaseUrl/trending/tv/day";

  //tmdb top rated movies
  static const topRatedMovies = "$tmdbBaseUrl/movie/top_rated";

  //tmdb top rated tv
  static const topRatedTV = "$tmdbBaseUrl/tv/top_rated";

  //tmdb search
  static const search = "$tmdbBaseUrl/search/multi";

  // search by genre
  static const genreSearch = "$tmdbBaseUrl/discover/movie";
}
