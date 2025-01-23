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
  const factory HomeEvent.getGenreResult1({required int gid}) =
      _GetGenreResult1;
  const factory HomeEvent.getGenreResult2({required int gid}) =
      _GetGenreResult2;
  const factory HomeEvent.getGenreResult3({required int gid}) =
      _GetGenreResult3;
  const factory HomeEvent.getGenreResult4({required int gid}) =
      _GetGenreResult4;
  const factory HomeEvent.getGenreNames({required List<String> gnames}) =
      _GetGenreNames;
}
