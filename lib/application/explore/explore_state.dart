part of 'explore_bloc.dart';

@freezed
class ExploreState with _$ExploreState {
  const factory ExploreState({
    required int selectedTab,
    required bool isLoadingMovie,
    required bool isErrorMovie,
    required List<GetLatestResponse> latestMovies,
    required bool isDetailTriggered,
    required List<GetLatestTvResponse> latestTV,
    required bool isLoadingTV,
    required bool isErrorTV,
  }) = _ExploreState;

  factory ExploreState.initial() => const ExploreState(
        selectedTab: 0,
        isLoadingMovie: false,
        isErrorMovie: false,
        latestMovies: [],
        isDetailTriggered: false,
        latestTV: [],
        isLoadingTV: false,
        isErrorTV: false,
      );
}
