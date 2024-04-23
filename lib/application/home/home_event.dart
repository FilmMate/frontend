part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.changeIndicator({required int index}) =
      _ChangeIndicator;
}
