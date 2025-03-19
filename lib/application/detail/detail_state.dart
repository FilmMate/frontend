part of 'detail_bloc.dart';

@freezed
class DetailState with _$DetailState {
  const factory DetailState({
    required bool pressedTrailer,
    required GetDetail detailData,
    required bool isLoading,
    required bool isError,
    required bool isLoadingSimilar,
    required bool isErrorSimilar,
    required List<TMDBResponse> similarList,
  }) = _DetailState;

  factory DetailState.initial() => DetailState(
      pressedTrailer: false,
      detailData: GetDetail(),
      isError: false,
      isLoading: false,
      isErrorSimilar: false,
      isLoadingSimilar: false,
      similarList: []);
}
