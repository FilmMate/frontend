part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState({
    required bool changeButtonColor,
    required bool changeScreen,
  }) = _UserState;

  factory UserState.initail() => const UserState(
        changeButtonColor: false,
        changeScreen: false,
      );
}
