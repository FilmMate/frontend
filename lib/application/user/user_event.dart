part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.changeColor({required bool trigger}) = _ChangeColor;
  const factory UserEvent.changeScreen() = _ChangeScreen;
  const factory UserEvent.displayAllUsers() = _DisplayAllUsers;
  const factory UserEvent.isUserExist({required String email}) = _IsUserExist;
}
