// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_navigator_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MainNavigatorEvent {
  int get item => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int item) changeItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int item)? changeItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int item)? changeItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeItem value) changeItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeItem value)? changeItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeItem value)? changeItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainNavigatorEventCopyWith<MainNavigatorEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainNavigatorEventCopyWith<$Res> {
  factory $MainNavigatorEventCopyWith(
          MainNavigatorEvent value, $Res Function(MainNavigatorEvent) then) =
      _$MainNavigatorEventCopyWithImpl<$Res, MainNavigatorEvent>;
  @useResult
  $Res call({int item});
}

/// @nodoc
class _$MainNavigatorEventCopyWithImpl<$Res, $Val extends MainNavigatorEvent>
    implements $MainNavigatorEventCopyWith<$Res> {
  _$MainNavigatorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
  }) {
    return _then(_value.copyWith(
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangeItemImplCopyWith<$Res>
    implements $MainNavigatorEventCopyWith<$Res> {
  factory _$$ChangeItemImplCopyWith(
          _$ChangeItemImpl value, $Res Function(_$ChangeItemImpl) then) =
      __$$ChangeItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int item});
}

/// @nodoc
class __$$ChangeItemImplCopyWithImpl<$Res>
    extends _$MainNavigatorEventCopyWithImpl<$Res, _$ChangeItemImpl>
    implements _$$ChangeItemImplCopyWith<$Res> {
  __$$ChangeItemImplCopyWithImpl(
      _$ChangeItemImpl _value, $Res Function(_$ChangeItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
  }) {
    return _then(_$ChangeItemImpl(
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeItemImpl implements _ChangeItem {
  const _$ChangeItemImpl({required this.item});

  @override
  final int item;

  @override
  String toString() {
    return 'MainNavigatorEvent.changeItem(item: $item)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeItemImpl &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeItemImplCopyWith<_$ChangeItemImpl> get copyWith =>
      __$$ChangeItemImplCopyWithImpl<_$ChangeItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int item) changeItem,
  }) {
    return changeItem(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int item)? changeItem,
  }) {
    return changeItem?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int item)? changeItem,
    required TResult orElse(),
  }) {
    if (changeItem != null) {
      return changeItem(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeItem value) changeItem,
  }) {
    return changeItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeItem value)? changeItem,
  }) {
    return changeItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeItem value)? changeItem,
    required TResult orElse(),
  }) {
    if (changeItem != null) {
      return changeItem(this);
    }
    return orElse();
  }
}

abstract class _ChangeItem implements MainNavigatorEvent {
  const factory _ChangeItem({required final int item}) = _$ChangeItemImpl;

  @override
  int get item;
  @override
  @JsonKey(ignore: true)
  _$$ChangeItemImplCopyWith<_$ChangeItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MainNavigatorState {
  int get currentSelected => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainNavigatorStateCopyWith<MainNavigatorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainNavigatorStateCopyWith<$Res> {
  factory $MainNavigatorStateCopyWith(
          MainNavigatorState value, $Res Function(MainNavigatorState) then) =
      _$MainNavigatorStateCopyWithImpl<$Res, MainNavigatorState>;
  @useResult
  $Res call({int currentSelected});
}

/// @nodoc
class _$MainNavigatorStateCopyWithImpl<$Res, $Val extends MainNavigatorState>
    implements $MainNavigatorStateCopyWith<$Res> {
  _$MainNavigatorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentSelected = null,
  }) {
    return _then(_value.copyWith(
      currentSelected: null == currentSelected
          ? _value.currentSelected
          : currentSelected // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MainNavigatorStateImplCopyWith<$Res>
    implements $MainNavigatorStateCopyWith<$Res> {
  factory _$$MainNavigatorStateImplCopyWith(_$MainNavigatorStateImpl value,
          $Res Function(_$MainNavigatorStateImpl) then) =
      __$$MainNavigatorStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int currentSelected});
}

/// @nodoc
class __$$MainNavigatorStateImplCopyWithImpl<$Res>
    extends _$MainNavigatorStateCopyWithImpl<$Res, _$MainNavigatorStateImpl>
    implements _$$MainNavigatorStateImplCopyWith<$Res> {
  __$$MainNavigatorStateImplCopyWithImpl(_$MainNavigatorStateImpl _value,
      $Res Function(_$MainNavigatorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentSelected = null,
  }) {
    return _then(_$MainNavigatorStateImpl(
      currentSelected: null == currentSelected
          ? _value.currentSelected
          : currentSelected // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MainNavigatorStateImpl implements _MainNavigatorState {
  const _$MainNavigatorStateImpl({required this.currentSelected});

  @override
  final int currentSelected;

  @override
  String toString() {
    return 'MainNavigatorState(currentSelected: $currentSelected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainNavigatorStateImpl &&
            (identical(other.currentSelected, currentSelected) ||
                other.currentSelected == currentSelected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainNavigatorStateImplCopyWith<_$MainNavigatorStateImpl> get copyWith =>
      __$$MainNavigatorStateImplCopyWithImpl<_$MainNavigatorStateImpl>(
          this, _$identity);
}

abstract class _MainNavigatorState implements MainNavigatorState {
  const factory _MainNavigatorState({required final int currentSelected}) =
      _$MainNavigatorStateImpl;

  @override
  int get currentSelected;
  @override
  @JsonKey(ignore: true)
  _$$MainNavigatorStateImplCopyWith<_$MainNavigatorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
