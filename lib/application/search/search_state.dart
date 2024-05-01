part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    required bool isLoading,
    required bool isError,
    required List<TMDBResponse> idleList,
    required List<TMDBResponse> resultList,
    required bool noResult,
  }) = _SearchState;

  factory SearchState.initial() => const SearchState(
        idleList: [],
        resultList: [],
        isError: false,
        isLoading: false, noResult: false,
      );
}
