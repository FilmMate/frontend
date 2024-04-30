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
}
