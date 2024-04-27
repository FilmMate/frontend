part of 'explore_bloc.dart';

@freezed
class ExploreEvent with _$ExploreEvent {
  const factory ExploreEvent.changeTab({required int index}) = _ChangeTab;
  const factory ExploreEvent.getLatestMovies({required String lang}) =
      _GetLatestMovies;
  const factory ExploreEvent.triggerDetail({required bool trigger}) =
      _TriggerDetail;
  const factory ExploreEvent.getLatestTv() = _GetLatestTV;
}
