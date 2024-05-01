part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required int carouselIndex,
    required bool isCarouselLoading,
    required bool isCarouselError,
    required List<TMDBResponse> carouselList,
    required bool isTopTvError,
    required bool isTopMovieError,
    required bool isTopTvLoading,
    required bool isTopMovieLoading,
    required List<TMDBResponse> topTvList,
    required List<TMDBResponse> topMovieList,
    required List<TMDBResponse> topRatedTv,
    required List<TMDBResponse> topRatedMovies,
    required bool isTopRatedMovieError,
    required bool isTopRatedTvError,
    required bool isTopRatedMovieLoading,
    required bool isTopRatedTvLoading,
  }) = _HomeState;
  factory HomeState.initial() => const HomeState(
      carouselIndex: 0,
      isCarouselLoading: false,
      isCarouselError: false,
      carouselList: [],
      isTopTvError: false,
      isTopMovieError: false,
      isTopMovieLoading: false,
      isTopTvLoading: false,
      topMovieList: [],
      topTvList: [],
      isTopRatedMovieError: false,
      isTopRatedMovieLoading: false,
      isTopRatedTvError: false,
      isTopRatedTvLoading: false,
      topRatedMovies: [],
      topRatedTv: []);
      
}
