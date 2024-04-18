part of 'main_navigator_bloc.dart';

@freezed
class MainNavigatorEvent with _$MainNavigatorEvent {
  const factory MainNavigatorEvent.changeItem({
    required int item,
  }) = _ChangeItem;
}
