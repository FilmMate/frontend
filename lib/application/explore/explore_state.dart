part of 'explore_bloc.dart';

@freezed
class ExploreState with _$ExploreState {
  const factory ExploreState({
    required int selectedTab,
    required bool isLoading,
    required bool isError,
    required List<GetLatestResponse> latestMovies,
    required bool isDetailTriggered,
  }) = _ExploreState;

  factory ExploreState.initial() => const ExploreState(
        selectedTab: 0,
        isLoading: false,
        isError: false,
        latestMovies: [], isDetailTriggered: false,
      );
}
