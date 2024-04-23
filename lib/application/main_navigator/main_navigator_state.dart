part of 'main_navigator_bloc.dart';

@freezed
class MainNavigatorState with _$MainNavigatorState {
  const factory MainNavigatorState({
    required int currentSelected,
  }) = _MainNavigatorState;
  factory MainNavigatorState.initial() =>
      const MainNavigatorState(currentSelected: 0);
}
