part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.changeIndicator({
    required int index,
  }) = _ChangeIndicator;
  const factory HomeEvent.getcarouselPosters() = _GetCarouselPosters;
  const factory HomeEvent.getTopTv() = _GetTopTv;
  const factory HomeEvent.getTopMovie() = _GetTopMovie;
  const factory HomeEvent.getTopRatedMovie() = _GetTopRatedMovie;
  const factory HomeEvent.getTopRatedTv() = _GetTopRatedTv;
  const factory HomeEvent.getGenres() = _GetGenres;
  const factory HomeEvent.getGenreResult({required int gid}) = _GetGenreResult;
}
