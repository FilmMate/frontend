// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool trigger) triggerTrailer,
    required TResult Function(String type, int id) getDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool trigger)? triggerTrailer,
    TResult? Function(String type, int id)? getDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool trigger)? triggerTrailer,
    TResult Function(String type, int id)? getDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TriggerTrailer value) triggerTrailer,
    required TResult Function(_GetDetails value) getDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TriggerTrailer value)? triggerTrailer,
    TResult? Function(_GetDetails value)? getDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TriggerTrailer value)? triggerTrailer,
    TResult Function(_GetDetails value)? getDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailEventCopyWith<$Res> {
  factory $DetailEventCopyWith(
          DetailEvent value, $Res Function(DetailEvent) then) =
      _$DetailEventCopyWithImpl<$Res, DetailEvent>;
}

/// @nodoc
class _$DetailEventCopyWithImpl<$Res, $Val extends DetailEvent>
    implements $DetailEventCopyWith<$Res> {
  _$DetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TriggerTrailerImplCopyWith<$Res> {
  factory _$$TriggerTrailerImplCopyWith(_$TriggerTrailerImpl value,
          $Res Function(_$TriggerTrailerImpl) then) =
      __$$TriggerTrailerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool trigger});
}

/// @nodoc
class __$$TriggerTrailerImplCopyWithImpl<$Res>
    extends _$DetailEventCopyWithImpl<$Res, _$TriggerTrailerImpl>
    implements _$$TriggerTrailerImplCopyWith<$Res> {
  __$$TriggerTrailerImplCopyWithImpl(
      _$TriggerTrailerImpl _value, $Res Function(_$TriggerTrailerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trigger = null,
  }) {
    return _then(_$TriggerTrailerImpl(
      trigger: null == trigger
          ? _value.trigger
          : trigger // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TriggerTrailerImpl implements _TriggerTrailer {
  const _$TriggerTrailerImpl({required this.trigger});

  @override
  final bool trigger;

  @override
  String toString() {
    return 'DetailEvent.triggerTrailer(trigger: $trigger)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TriggerTrailerImpl &&
            (identical(other.trigger, trigger) || other.trigger == trigger));
  }

  @override
  int get hashCode => Object.hash(runtimeType, trigger);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TriggerTrailerImplCopyWith<_$TriggerTrailerImpl> get copyWith =>
      __$$TriggerTrailerImplCopyWithImpl<_$TriggerTrailerImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool trigger) triggerTrailer,
    required TResult Function(String type, int id) getDetails,
  }) {
    return triggerTrailer(trigger);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool trigger)? triggerTrailer,
    TResult? Function(String type, int id)? getDetails,
  }) {
    return triggerTrailer?.call(trigger);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool trigger)? triggerTrailer,
    TResult Function(String type, int id)? getDetails,
    required TResult orElse(),
  }) {
    if (triggerTrailer != null) {
      return triggerTrailer(trigger);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TriggerTrailer value) triggerTrailer,
    required TResult Function(_GetDetails value) getDetails,
  }) {
    return triggerTrailer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TriggerTrailer value)? triggerTrailer,
    TResult? Function(_GetDetails value)? getDetails,
  }) {
    return triggerTrailer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TriggerTrailer value)? triggerTrailer,
    TResult Function(_GetDetails value)? getDetails,
    required TResult orElse(),
  }) {
    if (triggerTrailer != null) {
      return triggerTrailer(this);
    }
    return orElse();
  }
}

abstract class _TriggerTrailer implements DetailEvent {
  const factory _TriggerTrailer({required final bool trigger}) =
      _$TriggerTrailerImpl;

  bool get trigger;
  @JsonKey(ignore: true)
  _$$TriggerTrailerImplCopyWith<_$TriggerTrailerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetDetailsImplCopyWith<$Res> {
  factory _$$GetDetailsImplCopyWith(
          _$GetDetailsImpl value, $Res Function(_$GetDetailsImpl) then) =
      __$$GetDetailsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String type, int id});
}

/// @nodoc
class __$$GetDetailsImplCopyWithImpl<$Res>
    extends _$DetailEventCopyWithImpl<$Res, _$GetDetailsImpl>
    implements _$$GetDetailsImplCopyWith<$Res> {
  __$$GetDetailsImplCopyWithImpl(
      _$GetDetailsImpl _value, $Res Function(_$GetDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? id = null,
  }) {
    return _then(_$GetDetailsImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetDetailsImpl implements _GetDetails {
  const _$GetDetailsImpl({required this.type, required this.id});

  @override
  final String type;
  @override
  final int id;

  @override
  String toString() {
    return 'DetailEvent.getDetails(type: $type, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDetailsImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDetailsImplCopyWith<_$GetDetailsImpl> get copyWith =>
      __$$GetDetailsImplCopyWithImpl<_$GetDetailsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool trigger) triggerTrailer,
    required TResult Function(String type, int id) getDetails,
  }) {
    return getDetails(type, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool trigger)? triggerTrailer,
    TResult? Function(String type, int id)? getDetails,
  }) {
    return getDetails?.call(type, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool trigger)? triggerTrailer,
    TResult Function(String type, int id)? getDetails,
    required TResult orElse(),
  }) {
    if (getDetails != null) {
      return getDetails(type, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TriggerTrailer value) triggerTrailer,
    required TResult Function(_GetDetails value) getDetails,
  }) {
    return getDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TriggerTrailer value)? triggerTrailer,
    TResult? Function(_GetDetails value)? getDetails,
  }) {
    return getDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TriggerTrailer value)? triggerTrailer,
    TResult Function(_GetDetails value)? getDetails,
    required TResult orElse(),
  }) {
    if (getDetails != null) {
      return getDetails(this);
    }
    return orElse();
  }
}

abstract class _GetDetails implements DetailEvent {
  const factory _GetDetails(
      {required final String type, required final int id}) = _$GetDetailsImpl;

  String get type;
  int get id;
  @JsonKey(ignore: true)
  _$$GetDetailsImplCopyWith<_$GetDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DetailState {
  bool get pressedTrailer => throw _privateConstructorUsedError;
  GetDetail get detailData => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailStateCopyWith<DetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailStateCopyWith<$Res> {
  factory $DetailStateCopyWith(
          DetailState value, $Res Function(DetailState) then) =
      _$DetailStateCopyWithImpl<$Res, DetailState>;
  @useResult
  $Res call(
      {bool pressedTrailer,
      GetDetail detailData,
      bool isLoading,
      bool isError});
}

/// @nodoc
class _$DetailStateCopyWithImpl<$Res, $Val extends DetailState>
    implements $DetailStateCopyWith<$Res> {
  _$DetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pressedTrailer = null,
    Object? detailData = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_value.copyWith(
      pressedTrailer: null == pressedTrailer
          ? _value.pressedTrailer
          : pressedTrailer // ignore: cast_nullable_to_non_nullable
              as bool,
      detailData: null == detailData
          ? _value.detailData
          : detailData // ignore: cast_nullable_to_non_nullable
              as GetDetail,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailStateImplCopyWith<$Res>
    implements $DetailStateCopyWith<$Res> {
  factory _$$DetailStateImplCopyWith(
          _$DetailStateImpl value, $Res Function(_$DetailStateImpl) then) =
      __$$DetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool pressedTrailer,
      GetDetail detailData,
      bool isLoading,
      bool isError});
}

/// @nodoc
class __$$DetailStateImplCopyWithImpl<$Res>
    extends _$DetailStateCopyWithImpl<$Res, _$DetailStateImpl>
    implements _$$DetailStateImplCopyWith<$Res> {
  __$$DetailStateImplCopyWithImpl(
      _$DetailStateImpl _value, $Res Function(_$DetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pressedTrailer = null,
    Object? detailData = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_$DetailStateImpl(
      pressedTrailer: null == pressedTrailer
          ? _value.pressedTrailer
          : pressedTrailer // ignore: cast_nullable_to_non_nullable
              as bool,
      detailData: null == detailData
          ? _value.detailData
          : detailData // ignore: cast_nullable_to_non_nullable
              as GetDetail,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DetailStateImpl implements _DetailState {
  const _$DetailStateImpl(
      {required this.pressedTrailer,
      required this.detailData,
      required this.isLoading,
      required this.isError});

  @override
  final bool pressedTrailer;
  @override
  final GetDetail detailData;
  @override
  final bool isLoading;
  @override
  final bool isError;

  @override
  String toString() {
    return 'DetailState(pressedTrailer: $pressedTrailer, detailData: $detailData, isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailStateImpl &&
            (identical(other.pressedTrailer, pressedTrailer) ||
                other.pressedTrailer == pressedTrailer) &&
            (identical(other.detailData, detailData) ||
                other.detailData == detailData) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, pressedTrailer, detailData, isLoading, isError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailStateImplCopyWith<_$DetailStateImpl> get copyWith =>
      __$$DetailStateImplCopyWithImpl<_$DetailStateImpl>(this, _$identity);
}

abstract class _DetailState implements DetailState {
  const factory _DetailState(
      {required final bool pressedTrailer,
      required final GetDetail detailData,
      required final bool isLoading,
      required final bool isError}) = _$DetailStateImpl;

  @override
  bool get pressedTrailer;
  @override
  GetDetail get detailData;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$$DetailStateImplCopyWith<_$DetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
