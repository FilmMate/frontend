part of 'detail_bloc.dart';

@freezed
class DetailState with _$DetailState {
  const factory DetailState({
    required bool pressedTrailer,
    required GetDetail detailData,
    required bool isLoading,
    required bool isError,
  }) = _DetailState;

  factory DetailState.initial() => DetailState(
        pressedTrailer: false,
        detailData: GetDetail(),
        isError: false,
        isLoading: false,
      );
}
