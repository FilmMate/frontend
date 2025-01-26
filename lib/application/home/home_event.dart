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
  const factory HomeEvent.getGenreResult1() = _GetGenreResult1;
  const factory HomeEvent.getGenreResult2() = _GetGenreResult2;
  const factory HomeEvent.getGenreResult3() = _GetGenreResult3;
  const factory HomeEvent.getGenreResult4() = _GetGenreResult4;
  const factory HomeEvent.getGenreNames() = _GetGenreNames;
  const factory HomeEvent.resetAll() = _ResetAll;
  const factory HomeEvent.getGenreResultTv1() = _GetGenreResultTv1;
  const factory HomeEvent.getGenreResultTv2() = _GetGenreResultTv2;
  const factory HomeEvent.getGenreResultTv3() = _GetGenreResultTv3;
}
