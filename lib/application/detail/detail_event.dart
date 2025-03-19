part of 'detail_bloc.dart';

@freezed
class DetailEvent with _$DetailEvent {
  const factory DetailEvent.triggerTrailer({
    required bool trigger,
  }) = _TriggerTrailer;

  const factory DetailEvent.getDetails({
    required String type,
    required int id,
  }) = _GetDetails;

  const factory DetailEvent.getSimilar({
    required String type,
    required int id,
  }) = _GetSimilar;

  const factory DetailEvent.getTvProvider({
    required int tid,
    required String type,
  }) = _GetTvProvider;
}
