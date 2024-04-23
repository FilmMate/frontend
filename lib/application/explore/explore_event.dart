part of 'explore_bloc.dart';

@freezed
class ExploreEvent with _$ExploreEvent {
  const factory ExploreEvent.changeTab({required int index}) = _ChangeTab;
  const factory ExploreEvent.getLatestMovies({required String lang}) =
      _GetLatestMovies;
}
