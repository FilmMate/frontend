// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool trigger) changeColor,
    required TResult Function() changeScreen,
    required TResult Function() displayAllUsers,
    required TResult Function(String email) isUserExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool trigger)? changeColor,
    TResult? Function()? changeScreen,
    TResult? Function()? displayAllUsers,
    TResult? Function(String email)? isUserExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool trigger)? changeColor,
    TResult Function()? changeScreen,
    TResult Function()? displayAllUsers,
    TResult Function(String email)? isUserExist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeColor value) changeColor,
    required TResult Function(_ChangeScreen value) changeScreen,
    required TResult Function(_DisplayAllUsers value) displayAllUsers,
    required TResult Function(_IsUserExist value) isUserExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeColor value)? changeColor,
    TResult? Function(_ChangeScreen value)? changeScreen,
    TResult? Function(_DisplayAllUsers value)? displayAllUsers,
    TResult? Function(_IsUserExist value)? isUserExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeColor value)? changeColor,
    TResult Function(_ChangeScreen value)? changeScreen,
    TResult Function(_DisplayAllUsers value)? displayAllUsers,
    TResult Function(_IsUserExist value)? isUserExist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res, UserEvent>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res, $Val extends UserEvent>
    implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChangeColorImplCopyWith<$Res> {
  factory _$$ChangeColorImplCopyWith(
          _$ChangeColorImpl value, $Res Function(_$ChangeColorImpl) then) =
      __$$ChangeColorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool trigger});
}

/// @nodoc
class __$$ChangeColorImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$ChangeColorImpl>
    implements _$$ChangeColorImplCopyWith<$Res> {
  __$$ChangeColorImplCopyWithImpl(
      _$ChangeColorImpl _value, $Res Function(_$ChangeColorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trigger = null,
  }) {
    return _then(_$ChangeColorImpl(
      trigger: null == trigger
          ? _value.trigger
          : trigger // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ChangeColorImpl implements _ChangeColor {
  const _$ChangeColorImpl({required this.trigger});

  @override
  final bool trigger;

  @override
  String toString() {
    return 'UserEvent.changeColor(trigger: $trigger)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeColorImpl &&
            (identical(other.trigger, trigger) || other.trigger == trigger));
  }

  @override
  int get hashCode => Object.hash(runtimeType, trigger);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeColorImplCopyWith<_$ChangeColorImpl> get copyWith =>
      __$$ChangeColorImplCopyWithImpl<_$ChangeColorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool trigger) changeColor,
    required TResult Function() changeScreen,
    required TResult Function() displayAllUsers,
    required TResult Function(String email) isUserExist,
  }) {
    return changeColor(trigger);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool trigger)? changeColor,
    TResult? Function()? changeScreen,
    TResult? Function()? displayAllUsers,
    TResult? Function(String email)? isUserExist,
  }) {
    return changeColor?.call(trigger);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool trigger)? changeColor,
    TResult Function()? changeScreen,
    TResult Function()? displayAllUsers,
    TResult Function(String email)? isUserExist,
    required TResult orElse(),
  }) {
    if (changeColor != null) {
      return changeColor(trigger);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeColor value) changeColor,
    required TResult Function(_ChangeScreen value) changeScreen,
    required TResult Function(_DisplayAllUsers value) displayAllUsers,
    required TResult Function(_IsUserExist value) isUserExist,
  }) {
    return changeColor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeColor value)? changeColor,
    TResult? Function(_ChangeScreen value)? changeScreen,
    TResult? Function(_DisplayAllUsers value)? displayAllUsers,
    TResult? Function(_IsUserExist value)? isUserExist,
  }) {
    return changeColor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeColor value)? changeColor,
    TResult Function(_ChangeScreen value)? changeScreen,
    TResult Function(_DisplayAllUsers value)? displayAllUsers,
    TResult Function(_IsUserExist value)? isUserExist,
    required TResult orElse(),
  }) {
    if (changeColor != null) {
      return changeColor(this);
    }
    return orElse();
  }
}

abstract class _ChangeColor implements UserEvent {
  const factory _ChangeColor({required final bool trigger}) = _$ChangeColorImpl;

  bool get trigger;
  @JsonKey(ignore: true)
  _$$ChangeColorImplCopyWith<_$ChangeColorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeScreenImplCopyWith<$Res> {
  factory _$$ChangeScreenImplCopyWith(
          _$ChangeScreenImpl value, $Res Function(_$ChangeScreenImpl) then) =
      __$$ChangeScreenImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChangeScreenImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$ChangeScreenImpl>
    implements _$$ChangeScreenImplCopyWith<$Res> {
  __$$ChangeScreenImplCopyWithImpl(
      _$ChangeScreenImpl _value, $Res Function(_$ChangeScreenImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChangeScreenImpl implements _ChangeScreen {
  const _$ChangeScreenImpl();

  @override
  String toString() {
    return 'UserEvent.changeScreen()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChangeScreenImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool trigger) changeColor,
    required TResult Function() changeScreen,
    required TResult Function() displayAllUsers,
    required TResult Function(String email) isUserExist,
  }) {
    return changeScreen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool trigger)? changeColor,
    TResult? Function()? changeScreen,
    TResult? Function()? displayAllUsers,
    TResult? Function(String email)? isUserExist,
  }) {
    return changeScreen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool trigger)? changeColor,
    TResult Function()? changeScreen,
    TResult Function()? displayAllUsers,
    TResult Function(String email)? isUserExist,
    required TResult orElse(),
  }) {
    if (changeScreen != null) {
      return changeScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeColor value) changeColor,
    required TResult Function(_ChangeScreen value) changeScreen,
    required TResult Function(_DisplayAllUsers value) displayAllUsers,
    required TResult Function(_IsUserExist value) isUserExist,
  }) {
    return changeScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeColor value)? changeColor,
    TResult? Function(_ChangeScreen value)? changeScreen,
    TResult? Function(_DisplayAllUsers value)? displayAllUsers,
    TResult? Function(_IsUserExist value)? isUserExist,
  }) {
    return changeScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeColor value)? changeColor,
    TResult Function(_ChangeScreen value)? changeScreen,
    TResult Function(_DisplayAllUsers value)? displayAllUsers,
    TResult Function(_IsUserExist value)? isUserExist,
    required TResult orElse(),
  }) {
    if (changeScreen != null) {
      return changeScreen(this);
    }
    return orElse();
  }
}

abstract class _ChangeScreen implements UserEvent {
  const factory _ChangeScreen() = _$ChangeScreenImpl;
}

/// @nodoc
abstract class _$$DisplayAllUsersImplCopyWith<$Res> {
  factory _$$DisplayAllUsersImplCopyWith(_$DisplayAllUsersImpl value,
          $Res Function(_$DisplayAllUsersImpl) then) =
      __$$DisplayAllUsersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DisplayAllUsersImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$DisplayAllUsersImpl>
    implements _$$DisplayAllUsersImplCopyWith<$Res> {
  __$$DisplayAllUsersImplCopyWithImpl(
      _$DisplayAllUsersImpl _value, $Res Function(_$DisplayAllUsersImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DisplayAllUsersImpl implements _DisplayAllUsers {
  const _$DisplayAllUsersImpl();

  @override
  String toString() {
    return 'UserEvent.displayAllUsers()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DisplayAllUsersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool trigger) changeColor,
    required TResult Function() changeScreen,
    required TResult Function() displayAllUsers,
    required TResult Function(String email) isUserExist,
  }) {
    return displayAllUsers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool trigger)? changeColor,
    TResult? Function()? changeScreen,
    TResult? Function()? displayAllUsers,
    TResult? Function(String email)? isUserExist,
  }) {
    return displayAllUsers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool trigger)? changeColor,
    TResult Function()? changeScreen,
    TResult Function()? displayAllUsers,
    TResult Function(String email)? isUserExist,
    required TResult orElse(),
  }) {
    if (displayAllUsers != null) {
      return displayAllUsers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeColor value) changeColor,
    required TResult Function(_ChangeScreen value) changeScreen,
    required TResult Function(_DisplayAllUsers value) displayAllUsers,
    required TResult Function(_IsUserExist value) isUserExist,
  }) {
    return displayAllUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeColor value)? changeColor,
    TResult? Function(_ChangeScreen value)? changeScreen,
    TResult? Function(_DisplayAllUsers value)? displayAllUsers,
    TResult? Function(_IsUserExist value)? isUserExist,
  }) {
    return displayAllUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeColor value)? changeColor,
    TResult Function(_ChangeScreen value)? changeScreen,
    TResult Function(_DisplayAllUsers value)? displayAllUsers,
    TResult Function(_IsUserExist value)? isUserExist,
    required TResult orElse(),
  }) {
    if (displayAllUsers != null) {
      return displayAllUsers(this);
    }
    return orElse();
  }
}

abstract class _DisplayAllUsers implements UserEvent {
  const factory _DisplayAllUsers() = _$DisplayAllUsersImpl;
}

/// @nodoc
abstract class _$$IsUserExistImplCopyWith<$Res> {
  factory _$$IsUserExistImplCopyWith(
          _$IsUserExistImpl value, $Res Function(_$IsUserExistImpl) then) =
      __$$IsUserExistImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$IsUserExistImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$IsUserExistImpl>
    implements _$$IsUserExistImplCopyWith<$Res> {
  __$$IsUserExistImplCopyWithImpl(
      _$IsUserExistImpl _value, $Res Function(_$IsUserExistImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$IsUserExistImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$IsUserExistImpl implements _IsUserExist {
  const _$IsUserExistImpl({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'UserEvent.isUserExist(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsUserExistImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IsUserExistImplCopyWith<_$IsUserExistImpl> get copyWith =>
      __$$IsUserExistImplCopyWithImpl<_$IsUserExistImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool trigger) changeColor,
    required TResult Function() changeScreen,
    required TResult Function() displayAllUsers,
    required TResult Function(String email) isUserExist,
  }) {
    return isUserExist(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool trigger)? changeColor,
    TResult? Function()? changeScreen,
    TResult? Function()? displayAllUsers,
    TResult? Function(String email)? isUserExist,
  }) {
    return isUserExist?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool trigger)? changeColor,
    TResult Function()? changeScreen,
    TResult Function()? displayAllUsers,
    TResult Function(String email)? isUserExist,
    required TResult orElse(),
  }) {
    if (isUserExist != null) {
      return isUserExist(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeColor value) changeColor,
    required TResult Function(_ChangeScreen value) changeScreen,
    required TResult Function(_DisplayAllUsers value) displayAllUsers,
    required TResult Function(_IsUserExist value) isUserExist,
  }) {
    return isUserExist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeColor value)? changeColor,
    TResult? Function(_ChangeScreen value)? changeScreen,
    TResult? Function(_DisplayAllUsers value)? displayAllUsers,
    TResult? Function(_IsUserExist value)? isUserExist,
  }) {
    return isUserExist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeColor value)? changeColor,
    TResult Function(_ChangeScreen value)? changeScreen,
    TResult Function(_DisplayAllUsers value)? displayAllUsers,
    TResult Function(_IsUserExist value)? isUserExist,
    required TResult orElse(),
  }) {
    if (isUserExist != null) {
      return isUserExist(this);
    }
    return orElse();
  }
}

abstract class _IsUserExist implements UserEvent {
  const factory _IsUserExist({required final String email}) = _$IsUserExistImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$IsUserExistImplCopyWith<_$IsUserExistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserState {
  bool get changeButtonColor => throw _privateConstructorUsedError;
  bool get changeScreen => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserStateCopyWith<UserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
  @useResult
  $Res call({bool changeButtonColor, bool changeScreen});
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? changeButtonColor = null,
    Object? changeScreen = null,
  }) {
    return _then(_value.copyWith(
      changeButtonColor: null == changeButtonColor
          ? _value.changeButtonColor
          : changeButtonColor // ignore: cast_nullable_to_non_nullable
              as bool,
      changeScreen: null == changeScreen
          ? _value.changeScreen
          : changeScreen // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserStateImplCopyWith<$Res>
    implements $UserStateCopyWith<$Res> {
  factory _$$UserStateImplCopyWith(
          _$UserStateImpl value, $Res Function(_$UserStateImpl) then) =
      __$$UserStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool changeButtonColor, bool changeScreen});
}

/// @nodoc
class __$$UserStateImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserStateImpl>
    implements _$$UserStateImplCopyWith<$Res> {
  __$$UserStateImplCopyWithImpl(
      _$UserStateImpl _value, $Res Function(_$UserStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? changeButtonColor = null,
    Object? changeScreen = null,
  }) {
    return _then(_$UserStateImpl(
      changeButtonColor: null == changeButtonColor
          ? _value.changeButtonColor
          : changeButtonColor // ignore: cast_nullable_to_non_nullable
              as bool,
      changeScreen: null == changeScreen
          ? _value.changeScreen
          : changeScreen // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UserStateImpl implements _UserState {
  const _$UserStateImpl(
      {required this.changeButtonColor, required this.changeScreen});

  @override
  final bool changeButtonColor;
  @override
  final bool changeScreen;

  @override
  String toString() {
    return 'UserState(changeButtonColor: $changeButtonColor, changeScreen: $changeScreen)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStateImpl &&
            (identical(other.changeButtonColor, changeButtonColor) ||
                other.changeButtonColor == changeButtonColor) &&
            (identical(other.changeScreen, changeScreen) ||
                other.changeScreen == changeScreen));
  }

  @override
  int get hashCode => Object.hash(runtimeType, changeButtonColor, changeScreen);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserStateImplCopyWith<_$UserStateImpl> get copyWith =>
      __$$UserStateImplCopyWithImpl<_$UserStateImpl>(this, _$identity);
}

abstract class _UserState implements UserState {
  const factory _UserState(
      {required final bool changeButtonColor,
      required final bool changeScreen}) = _$UserStateImpl;

  @override
  bool get changeButtonColor;
  @override
  bool get changeScreen;
  @override
  @JsonKey(ignore: true)
  _$$UserStateImplCopyWith<_$UserStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
