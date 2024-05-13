// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeIndicator,
    required TResult Function() getcarouselPosters,
    required TResult Function() getTopTv,
    required TResult Function() getTopMovie,
    required TResult Function() getTopRatedMovie,
    required TResult Function() getTopRatedTv,
    required TResult Function() getGenres,
    required TResult Function(int gid) getGenreResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeIndicator,
    TResult? Function()? getcarouselPosters,
    TResult? Function()? getTopTv,
    TResult? Function()? getTopMovie,
    TResult? Function()? getTopRatedMovie,
    TResult? Function()? getTopRatedTv,
    TResult? Function()? getGenres,
    TResult? Function(int gid)? getGenreResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeIndicator,
    TResult Function()? getcarouselPosters,
    TResult Function()? getTopTv,
    TResult Function()? getTopMovie,
    TResult Function()? getTopRatedMovie,
    TResult Function()? getTopRatedTv,
    TResult Function()? getGenres,
    TResult Function(int gid)? getGenreResult,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeIndicator value) changeIndicator,
    required TResult Function(_GetCarouselPosters value) getcarouselPosters,
    required TResult Function(_GetTopTv value) getTopTv,
    required TResult Function(_GetTopMovie value) getTopMovie,
    required TResult Function(_GetTopRatedMovie value) getTopRatedMovie,
    required TResult Function(_GetTopRatedTv value) getTopRatedTv,
    required TResult Function(_GetGenres value) getGenres,
    required TResult Function(_GetGenreResult value) getGenreResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeIndicator value)? changeIndicator,
    TResult? Function(_GetCarouselPosters value)? getcarouselPosters,
    TResult? Function(_GetTopTv value)? getTopTv,
    TResult? Function(_GetTopMovie value)? getTopMovie,
    TResult? Function(_GetTopRatedMovie value)? getTopRatedMovie,
    TResult? Function(_GetTopRatedTv value)? getTopRatedTv,
    TResult? Function(_GetGenres value)? getGenres,
    TResult? Function(_GetGenreResult value)? getGenreResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeIndicator value)? changeIndicator,
    TResult Function(_GetCarouselPosters value)? getcarouselPosters,
    TResult Function(_GetTopTv value)? getTopTv,
    TResult Function(_GetTopMovie value)? getTopMovie,
    TResult Function(_GetTopRatedMovie value)? getTopRatedMovie,
    TResult Function(_GetTopRatedTv value)? getTopRatedTv,
    TResult Function(_GetGenres value)? getGenres,
    TResult Function(_GetGenreResult value)? getGenreResult,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChangeIndicatorImplCopyWith<$Res> {
  factory _$$ChangeIndicatorImplCopyWith(_$ChangeIndicatorImpl value,
          $Res Function(_$ChangeIndicatorImpl) then) =
      __$$ChangeIndicatorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$ChangeIndicatorImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$ChangeIndicatorImpl>
    implements _$$ChangeIndicatorImplCopyWith<$Res> {
  __$$ChangeIndicatorImplCopyWithImpl(
      _$ChangeIndicatorImpl _value, $Res Function(_$ChangeIndicatorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$ChangeIndicatorImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeIndicatorImpl implements _ChangeIndicator {
  const _$ChangeIndicatorImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'HomeEvent.changeIndicator(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeIndicatorImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeIndicatorImplCopyWith<_$ChangeIndicatorImpl> get copyWith =>
      __$$ChangeIndicatorImplCopyWithImpl<_$ChangeIndicatorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeIndicator,
    required TResult Function() getcarouselPosters,
    required TResult Function() getTopTv,
    required TResult Function() getTopMovie,
    required TResult Function() getTopRatedMovie,
    required TResult Function() getTopRatedTv,
    required TResult Function() getGenres,
    required TResult Function(int gid) getGenreResult,
  }) {
    return changeIndicator(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeIndicator,
    TResult? Function()? getcarouselPosters,
    TResult? Function()? getTopTv,
    TResult? Function()? getTopMovie,
    TResult? Function()? getTopRatedMovie,
    TResult? Function()? getTopRatedTv,
    TResult? Function()? getGenres,
    TResult? Function(int gid)? getGenreResult,
  }) {
    return changeIndicator?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeIndicator,
    TResult Function()? getcarouselPosters,
    TResult Function()? getTopTv,
    TResult Function()? getTopMovie,
    TResult Function()? getTopRatedMovie,
    TResult Function()? getTopRatedTv,
    TResult Function()? getGenres,
    TResult Function(int gid)? getGenreResult,
    required TResult orElse(),
  }) {
    if (changeIndicator != null) {
      return changeIndicator(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeIndicator value) changeIndicator,
    required TResult Function(_GetCarouselPosters value) getcarouselPosters,
    required TResult Function(_GetTopTv value) getTopTv,
    required TResult Function(_GetTopMovie value) getTopMovie,
    required TResult Function(_GetTopRatedMovie value) getTopRatedMovie,
    required TResult Function(_GetTopRatedTv value) getTopRatedTv,
    required TResult Function(_GetGenres value) getGenres,
    required TResult Function(_GetGenreResult value) getGenreResult,
  }) {
    return changeIndicator(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeIndicator value)? changeIndicator,
    TResult? Function(_GetCarouselPosters value)? getcarouselPosters,
    TResult? Function(_GetTopTv value)? getTopTv,
    TResult? Function(_GetTopMovie value)? getTopMovie,
    TResult? Function(_GetTopRatedMovie value)? getTopRatedMovie,
    TResult? Function(_GetTopRatedTv value)? getTopRatedTv,
    TResult? Function(_GetGenres value)? getGenres,
    TResult? Function(_GetGenreResult value)? getGenreResult,
  }) {
    return changeIndicator?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeIndicator value)? changeIndicator,
    TResult Function(_GetCarouselPosters value)? getcarouselPosters,
    TResult Function(_GetTopTv value)? getTopTv,
    TResult Function(_GetTopMovie value)? getTopMovie,
    TResult Function(_GetTopRatedMovie value)? getTopRatedMovie,
    TResult Function(_GetTopRatedTv value)? getTopRatedTv,
    TResult Function(_GetGenres value)? getGenres,
    TResult Function(_GetGenreResult value)? getGenreResult,
    required TResult orElse(),
  }) {
    if (changeIndicator != null) {
      return changeIndicator(this);
    }
    return orElse();
  }
}

abstract class _ChangeIndicator implements HomeEvent {
  const factory _ChangeIndicator({required final int index}) =
      _$ChangeIndicatorImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$ChangeIndicatorImplCopyWith<_$ChangeIndicatorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCarouselPostersImplCopyWith<$Res> {
  factory _$$GetCarouselPostersImplCopyWith(_$GetCarouselPostersImpl value,
          $Res Function(_$GetCarouselPostersImpl) then) =
      __$$GetCarouselPostersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCarouselPostersImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetCarouselPostersImpl>
    implements _$$GetCarouselPostersImplCopyWith<$Res> {
  __$$GetCarouselPostersImplCopyWithImpl(_$GetCarouselPostersImpl _value,
      $Res Function(_$GetCarouselPostersImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCarouselPostersImpl implements _GetCarouselPosters {
  const _$GetCarouselPostersImpl();

  @override
  String toString() {
    return 'HomeEvent.getcarouselPosters()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCarouselPostersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeIndicator,
    required TResult Function() getcarouselPosters,
    required TResult Function() getTopTv,
    required TResult Function() getTopMovie,
    required TResult Function() getTopRatedMovie,
    required TResult Function() getTopRatedTv,
    required TResult Function() getGenres,
    required TResult Function(int gid) getGenreResult,
  }) {
    return getcarouselPosters();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeIndicator,
    TResult? Function()? getcarouselPosters,
    TResult? Function()? getTopTv,
    TResult? Function()? getTopMovie,
    TResult? Function()? getTopRatedMovie,
    TResult? Function()? getTopRatedTv,
    TResult? Function()? getGenres,
    TResult? Function(int gid)? getGenreResult,
  }) {
    return getcarouselPosters?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeIndicator,
    TResult Function()? getcarouselPosters,
    TResult Function()? getTopTv,
    TResult Function()? getTopMovie,
    TResult Function()? getTopRatedMovie,
    TResult Function()? getTopRatedTv,
    TResult Function()? getGenres,
    TResult Function(int gid)? getGenreResult,
    required TResult orElse(),
  }) {
    if (getcarouselPosters != null) {
      return getcarouselPosters();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeIndicator value) changeIndicator,
    required TResult Function(_GetCarouselPosters value) getcarouselPosters,
    required TResult Function(_GetTopTv value) getTopTv,
    required TResult Function(_GetTopMovie value) getTopMovie,
    required TResult Function(_GetTopRatedMovie value) getTopRatedMovie,
    required TResult Function(_GetTopRatedTv value) getTopRatedTv,
    required TResult Function(_GetGenres value) getGenres,
    required TResult Function(_GetGenreResult value) getGenreResult,
  }) {
    return getcarouselPosters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeIndicator value)? changeIndicator,
    TResult? Function(_GetCarouselPosters value)? getcarouselPosters,
    TResult? Function(_GetTopTv value)? getTopTv,
    TResult? Function(_GetTopMovie value)? getTopMovie,
    TResult? Function(_GetTopRatedMovie value)? getTopRatedMovie,
    TResult? Function(_GetTopRatedTv value)? getTopRatedTv,
    TResult? Function(_GetGenres value)? getGenres,
    TResult? Function(_GetGenreResult value)? getGenreResult,
  }) {
    return getcarouselPosters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeIndicator value)? changeIndicator,
    TResult Function(_GetCarouselPosters value)? getcarouselPosters,
    TResult Function(_GetTopTv value)? getTopTv,
    TResult Function(_GetTopMovie value)? getTopMovie,
    TResult Function(_GetTopRatedMovie value)? getTopRatedMovie,
    TResult Function(_GetTopRatedTv value)? getTopRatedTv,
    TResult Function(_GetGenres value)? getGenres,
    TResult Function(_GetGenreResult value)? getGenreResult,
    required TResult orElse(),
  }) {
    if (getcarouselPosters != null) {
      return getcarouselPosters(this);
    }
    return orElse();
  }
}

abstract class _GetCarouselPosters implements HomeEvent {
  const factory _GetCarouselPosters() = _$GetCarouselPostersImpl;
}

/// @nodoc
abstract class _$$GetTopTvImplCopyWith<$Res> {
  factory _$$GetTopTvImplCopyWith(
          _$GetTopTvImpl value, $Res Function(_$GetTopTvImpl) then) =
      __$$GetTopTvImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetTopTvImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetTopTvImpl>
    implements _$$GetTopTvImplCopyWith<$Res> {
  __$$GetTopTvImplCopyWithImpl(
      _$GetTopTvImpl _value, $Res Function(_$GetTopTvImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetTopTvImpl implements _GetTopTv {
  const _$GetTopTvImpl();

  @override
  String toString() {
    return 'HomeEvent.getTopTv()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetTopTvImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeIndicator,
    required TResult Function() getcarouselPosters,
    required TResult Function() getTopTv,
    required TResult Function() getTopMovie,
    required TResult Function() getTopRatedMovie,
    required TResult Function() getTopRatedTv,
    required TResult Function() getGenres,
    required TResult Function(int gid) getGenreResult,
  }) {
    return getTopTv();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeIndicator,
    TResult? Function()? getcarouselPosters,
    TResult? Function()? getTopTv,
    TResult? Function()? getTopMovie,
    TResult? Function()? getTopRatedMovie,
    TResult? Function()? getTopRatedTv,
    TResult? Function()? getGenres,
    TResult? Function(int gid)? getGenreResult,
  }) {
    return getTopTv?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeIndicator,
    TResult Function()? getcarouselPosters,
    TResult Function()? getTopTv,
    TResult Function()? getTopMovie,
    TResult Function()? getTopRatedMovie,
    TResult Function()? getTopRatedTv,
    TResult Function()? getGenres,
    TResult Function(int gid)? getGenreResult,
    required TResult orElse(),
  }) {
    if (getTopTv != null) {
      return getTopTv();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeIndicator value) changeIndicator,
    required TResult Function(_GetCarouselPosters value) getcarouselPosters,
    required TResult Function(_GetTopTv value) getTopTv,
    required TResult Function(_GetTopMovie value) getTopMovie,
    required TResult Function(_GetTopRatedMovie value) getTopRatedMovie,
    required TResult Function(_GetTopRatedTv value) getTopRatedTv,
    required TResult Function(_GetGenres value) getGenres,
    required TResult Function(_GetGenreResult value) getGenreResult,
  }) {
    return getTopTv(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeIndicator value)? changeIndicator,
    TResult? Function(_GetCarouselPosters value)? getcarouselPosters,
    TResult? Function(_GetTopTv value)? getTopTv,
    TResult? Function(_GetTopMovie value)? getTopMovie,
    TResult? Function(_GetTopRatedMovie value)? getTopRatedMovie,
    TResult? Function(_GetTopRatedTv value)? getTopRatedTv,
    TResult? Function(_GetGenres value)? getGenres,
    TResult? Function(_GetGenreResult value)? getGenreResult,
  }) {
    return getTopTv?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeIndicator value)? changeIndicator,
    TResult Function(_GetCarouselPosters value)? getcarouselPosters,
    TResult Function(_GetTopTv value)? getTopTv,
    TResult Function(_GetTopMovie value)? getTopMovie,
    TResult Function(_GetTopRatedMovie value)? getTopRatedMovie,
    TResult Function(_GetTopRatedTv value)? getTopRatedTv,
    TResult Function(_GetGenres value)? getGenres,
    TResult Function(_GetGenreResult value)? getGenreResult,
    required TResult orElse(),
  }) {
    if (getTopTv != null) {
      return getTopTv(this);
    }
    return orElse();
  }
}

abstract class _GetTopTv implements HomeEvent {
  const factory _GetTopTv() = _$GetTopTvImpl;
}

/// @nodoc
abstract class _$$GetTopMovieImplCopyWith<$Res> {
  factory _$$GetTopMovieImplCopyWith(
          _$GetTopMovieImpl value, $Res Function(_$GetTopMovieImpl) then) =
      __$$GetTopMovieImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetTopMovieImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetTopMovieImpl>
    implements _$$GetTopMovieImplCopyWith<$Res> {
  __$$GetTopMovieImplCopyWithImpl(
      _$GetTopMovieImpl _value, $Res Function(_$GetTopMovieImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetTopMovieImpl implements _GetTopMovie {
  const _$GetTopMovieImpl();

  @override
  String toString() {
    return 'HomeEvent.getTopMovie()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetTopMovieImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeIndicator,
    required TResult Function() getcarouselPosters,
    required TResult Function() getTopTv,
    required TResult Function() getTopMovie,
    required TResult Function() getTopRatedMovie,
    required TResult Function() getTopRatedTv,
    required TResult Function() getGenres,
    required TResult Function(int gid) getGenreResult,
  }) {
    return getTopMovie();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeIndicator,
    TResult? Function()? getcarouselPosters,
    TResult? Function()? getTopTv,
    TResult? Function()? getTopMovie,
    TResult? Function()? getTopRatedMovie,
    TResult? Function()? getTopRatedTv,
    TResult? Function()? getGenres,
    TResult? Function(int gid)? getGenreResult,
  }) {
    return getTopMovie?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeIndicator,
    TResult Function()? getcarouselPosters,
    TResult Function()? getTopTv,
    TResult Function()? getTopMovie,
    TResult Function()? getTopRatedMovie,
    TResult Function()? getTopRatedTv,
    TResult Function()? getGenres,
    TResult Function(int gid)? getGenreResult,
    required TResult orElse(),
  }) {
    if (getTopMovie != null) {
      return getTopMovie();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeIndicator value) changeIndicator,
    required TResult Function(_GetCarouselPosters value) getcarouselPosters,
    required TResult Function(_GetTopTv value) getTopTv,
    required TResult Function(_GetTopMovie value) getTopMovie,
    required TResult Function(_GetTopRatedMovie value) getTopRatedMovie,
    required TResult Function(_GetTopRatedTv value) getTopRatedTv,
    required TResult Function(_GetGenres value) getGenres,
    required TResult Function(_GetGenreResult value) getGenreResult,
  }) {
    return getTopMovie(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeIndicator value)? changeIndicator,
    TResult? Function(_GetCarouselPosters value)? getcarouselPosters,
    TResult? Function(_GetTopTv value)? getTopTv,
    TResult? Function(_GetTopMovie value)? getTopMovie,
    TResult? Function(_GetTopRatedMovie value)? getTopRatedMovie,
    TResult? Function(_GetTopRatedTv value)? getTopRatedTv,
    TResult? Function(_GetGenres value)? getGenres,
    TResult? Function(_GetGenreResult value)? getGenreResult,
  }) {
    return getTopMovie?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeIndicator value)? changeIndicator,
    TResult Function(_GetCarouselPosters value)? getcarouselPosters,
    TResult Function(_GetTopTv value)? getTopTv,
    TResult Function(_GetTopMovie value)? getTopMovie,
    TResult Function(_GetTopRatedMovie value)? getTopRatedMovie,
    TResult Function(_GetTopRatedTv value)? getTopRatedTv,
    TResult Function(_GetGenres value)? getGenres,
    TResult Function(_GetGenreResult value)? getGenreResult,
    required TResult orElse(),
  }) {
    if (getTopMovie != null) {
      return getTopMovie(this);
    }
    return orElse();
  }
}

abstract class _GetTopMovie implements HomeEvent {
  const factory _GetTopMovie() = _$GetTopMovieImpl;
}

/// @nodoc
abstract class _$$GetTopRatedMovieImplCopyWith<$Res> {
  factory _$$GetTopRatedMovieImplCopyWith(_$GetTopRatedMovieImpl value,
          $Res Function(_$GetTopRatedMovieImpl) then) =
      __$$GetTopRatedMovieImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetTopRatedMovieImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetTopRatedMovieImpl>
    implements _$$GetTopRatedMovieImplCopyWith<$Res> {
  __$$GetTopRatedMovieImplCopyWithImpl(_$GetTopRatedMovieImpl _value,
      $Res Function(_$GetTopRatedMovieImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetTopRatedMovieImpl implements _GetTopRatedMovie {
  const _$GetTopRatedMovieImpl();

  @override
  String toString() {
    return 'HomeEvent.getTopRatedMovie()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetTopRatedMovieImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeIndicator,
    required TResult Function() getcarouselPosters,
    required TResult Function() getTopTv,
    required TResult Function() getTopMovie,
    required TResult Function() getTopRatedMovie,
    required TResult Function() getTopRatedTv,
    required TResult Function() getGenres,
    required TResult Function(int gid) getGenreResult,
  }) {
    return getTopRatedMovie();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeIndicator,
    TResult? Function()? getcarouselPosters,
    TResult? Function()? getTopTv,
    TResult? Function()? getTopMovie,
    TResult? Function()? getTopRatedMovie,
    TResult? Function()? getTopRatedTv,
    TResult? Function()? getGenres,
    TResult? Function(int gid)? getGenreResult,
  }) {
    return getTopRatedMovie?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeIndicator,
    TResult Function()? getcarouselPosters,
    TResult Function()? getTopTv,
    TResult Function()? getTopMovie,
    TResult Function()? getTopRatedMovie,
    TResult Function()? getTopRatedTv,
    TResult Function()? getGenres,
    TResult Function(int gid)? getGenreResult,
    required TResult orElse(),
  }) {
    if (getTopRatedMovie != null) {
      return getTopRatedMovie();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeIndicator value) changeIndicator,
    required TResult Function(_GetCarouselPosters value) getcarouselPosters,
    required TResult Function(_GetTopTv value) getTopTv,
    required TResult Function(_GetTopMovie value) getTopMovie,
    required TResult Function(_GetTopRatedMovie value) getTopRatedMovie,
    required TResult Function(_GetTopRatedTv value) getTopRatedTv,
    required TResult Function(_GetGenres value) getGenres,
    required TResult Function(_GetGenreResult value) getGenreResult,
  }) {
    return getTopRatedMovie(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeIndicator value)? changeIndicator,
    TResult? Function(_GetCarouselPosters value)? getcarouselPosters,
    TResult? Function(_GetTopTv value)? getTopTv,
    TResult? Function(_GetTopMovie value)? getTopMovie,
    TResult? Function(_GetTopRatedMovie value)? getTopRatedMovie,
    TResult? Function(_GetTopRatedTv value)? getTopRatedTv,
    TResult? Function(_GetGenres value)? getGenres,
    TResult? Function(_GetGenreResult value)? getGenreResult,
  }) {
    return getTopRatedMovie?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeIndicator value)? changeIndicator,
    TResult Function(_GetCarouselPosters value)? getcarouselPosters,
    TResult Function(_GetTopTv value)? getTopTv,
    TResult Function(_GetTopMovie value)? getTopMovie,
    TResult Function(_GetTopRatedMovie value)? getTopRatedMovie,
    TResult Function(_GetTopRatedTv value)? getTopRatedTv,
    TResult Function(_GetGenres value)? getGenres,
    TResult Function(_GetGenreResult value)? getGenreResult,
    required TResult orElse(),
  }) {
    if (getTopRatedMovie != null) {
      return getTopRatedMovie(this);
    }
    return orElse();
  }
}

abstract class _GetTopRatedMovie implements HomeEvent {
  const factory _GetTopRatedMovie() = _$GetTopRatedMovieImpl;
}

/// @nodoc
abstract class _$$GetTopRatedTvImplCopyWith<$Res> {
  factory _$$GetTopRatedTvImplCopyWith(
          _$GetTopRatedTvImpl value, $Res Function(_$GetTopRatedTvImpl) then) =
      __$$GetTopRatedTvImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetTopRatedTvImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetTopRatedTvImpl>
    implements _$$GetTopRatedTvImplCopyWith<$Res> {
  __$$GetTopRatedTvImplCopyWithImpl(
      _$GetTopRatedTvImpl _value, $Res Function(_$GetTopRatedTvImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetTopRatedTvImpl implements _GetTopRatedTv {
  const _$GetTopRatedTvImpl();

  @override
  String toString() {
    return 'HomeEvent.getTopRatedTv()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetTopRatedTvImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeIndicator,
    required TResult Function() getcarouselPosters,
    required TResult Function() getTopTv,
    required TResult Function() getTopMovie,
    required TResult Function() getTopRatedMovie,
    required TResult Function() getTopRatedTv,
    required TResult Function() getGenres,
    required TResult Function(int gid) getGenreResult,
  }) {
    return getTopRatedTv();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeIndicator,
    TResult? Function()? getcarouselPosters,
    TResult? Function()? getTopTv,
    TResult? Function()? getTopMovie,
    TResult? Function()? getTopRatedMovie,
    TResult? Function()? getTopRatedTv,
    TResult? Function()? getGenres,
    TResult? Function(int gid)? getGenreResult,
  }) {
    return getTopRatedTv?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeIndicator,
    TResult Function()? getcarouselPosters,
    TResult Function()? getTopTv,
    TResult Function()? getTopMovie,
    TResult Function()? getTopRatedMovie,
    TResult Function()? getTopRatedTv,
    TResult Function()? getGenres,
    TResult Function(int gid)? getGenreResult,
    required TResult orElse(),
  }) {
    if (getTopRatedTv != null) {
      return getTopRatedTv();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeIndicator value) changeIndicator,
    required TResult Function(_GetCarouselPosters value) getcarouselPosters,
    required TResult Function(_GetTopTv value) getTopTv,
    required TResult Function(_GetTopMovie value) getTopMovie,
    required TResult Function(_GetTopRatedMovie value) getTopRatedMovie,
    required TResult Function(_GetTopRatedTv value) getTopRatedTv,
    required TResult Function(_GetGenres value) getGenres,
    required TResult Function(_GetGenreResult value) getGenreResult,
  }) {
    return getTopRatedTv(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeIndicator value)? changeIndicator,
    TResult? Function(_GetCarouselPosters value)? getcarouselPosters,
    TResult? Function(_GetTopTv value)? getTopTv,
    TResult? Function(_GetTopMovie value)? getTopMovie,
    TResult? Function(_GetTopRatedMovie value)? getTopRatedMovie,
    TResult? Function(_GetTopRatedTv value)? getTopRatedTv,
    TResult? Function(_GetGenres value)? getGenres,
    TResult? Function(_GetGenreResult value)? getGenreResult,
  }) {
    return getTopRatedTv?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeIndicator value)? changeIndicator,
    TResult Function(_GetCarouselPosters value)? getcarouselPosters,
    TResult Function(_GetTopTv value)? getTopTv,
    TResult Function(_GetTopMovie value)? getTopMovie,
    TResult Function(_GetTopRatedMovie value)? getTopRatedMovie,
    TResult Function(_GetTopRatedTv value)? getTopRatedTv,
    TResult Function(_GetGenres value)? getGenres,
    TResult Function(_GetGenreResult value)? getGenreResult,
    required TResult orElse(),
  }) {
    if (getTopRatedTv != null) {
      return getTopRatedTv(this);
    }
    return orElse();
  }
}

abstract class _GetTopRatedTv implements HomeEvent {
  const factory _GetTopRatedTv() = _$GetTopRatedTvImpl;
}

/// @nodoc
abstract class _$$GetGenresImplCopyWith<$Res> {
  factory _$$GetGenresImplCopyWith(
          _$GetGenresImpl value, $Res Function(_$GetGenresImpl) then) =
      __$$GetGenresImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetGenresImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetGenresImpl>
    implements _$$GetGenresImplCopyWith<$Res> {
  __$$GetGenresImplCopyWithImpl(
      _$GetGenresImpl _value, $Res Function(_$GetGenresImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetGenresImpl implements _GetGenres {
  const _$GetGenresImpl();

  @override
  String toString() {
    return 'HomeEvent.getGenres()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetGenresImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeIndicator,
    required TResult Function() getcarouselPosters,
    required TResult Function() getTopTv,
    required TResult Function() getTopMovie,
    required TResult Function() getTopRatedMovie,
    required TResult Function() getTopRatedTv,
    required TResult Function() getGenres,
    required TResult Function(int gid) getGenreResult,
  }) {
    return getGenres();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeIndicator,
    TResult? Function()? getcarouselPosters,
    TResult? Function()? getTopTv,
    TResult? Function()? getTopMovie,
    TResult? Function()? getTopRatedMovie,
    TResult? Function()? getTopRatedTv,
    TResult? Function()? getGenres,
    TResult? Function(int gid)? getGenreResult,
  }) {
    return getGenres?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeIndicator,
    TResult Function()? getcarouselPosters,
    TResult Function()? getTopTv,
    TResult Function()? getTopMovie,
    TResult Function()? getTopRatedMovie,
    TResult Function()? getTopRatedTv,
    TResult Function()? getGenres,
    TResult Function(int gid)? getGenreResult,
    required TResult orElse(),
  }) {
    if (getGenres != null) {
      return getGenres();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeIndicator value) changeIndicator,
    required TResult Function(_GetCarouselPosters value) getcarouselPosters,
    required TResult Function(_GetTopTv value) getTopTv,
    required TResult Function(_GetTopMovie value) getTopMovie,
    required TResult Function(_GetTopRatedMovie value) getTopRatedMovie,
    required TResult Function(_GetTopRatedTv value) getTopRatedTv,
    required TResult Function(_GetGenres value) getGenres,
    required TResult Function(_GetGenreResult value) getGenreResult,
  }) {
    return getGenres(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeIndicator value)? changeIndicator,
    TResult? Function(_GetCarouselPosters value)? getcarouselPosters,
    TResult? Function(_GetTopTv value)? getTopTv,
    TResult? Function(_GetTopMovie value)? getTopMovie,
    TResult? Function(_GetTopRatedMovie value)? getTopRatedMovie,
    TResult? Function(_GetTopRatedTv value)? getTopRatedTv,
    TResult? Function(_GetGenres value)? getGenres,
    TResult? Function(_GetGenreResult value)? getGenreResult,
  }) {
    return getGenres?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeIndicator value)? changeIndicator,
    TResult Function(_GetCarouselPosters value)? getcarouselPosters,
    TResult Function(_GetTopTv value)? getTopTv,
    TResult Function(_GetTopMovie value)? getTopMovie,
    TResult Function(_GetTopRatedMovie value)? getTopRatedMovie,
    TResult Function(_GetTopRatedTv value)? getTopRatedTv,
    TResult Function(_GetGenres value)? getGenres,
    TResult Function(_GetGenreResult value)? getGenreResult,
    required TResult orElse(),
  }) {
    if (getGenres != null) {
      return getGenres(this);
    }
    return orElse();
  }
}

abstract class _GetGenres implements HomeEvent {
  const factory _GetGenres() = _$GetGenresImpl;
}

/// @nodoc
abstract class _$$GetGenreResultImplCopyWith<$Res> {
  factory _$$GetGenreResultImplCopyWith(_$GetGenreResultImpl value,
          $Res Function(_$GetGenreResultImpl) then) =
      __$$GetGenreResultImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int gid});
}

/// @nodoc
class __$$GetGenreResultImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetGenreResultImpl>
    implements _$$GetGenreResultImplCopyWith<$Res> {
  __$$GetGenreResultImplCopyWithImpl(
      _$GetGenreResultImpl _value, $Res Function(_$GetGenreResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gid = null,
  }) {
    return _then(_$GetGenreResultImpl(
      gid: null == gid
          ? _value.gid
          : gid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetGenreResultImpl implements _GetGenreResult {
  const _$GetGenreResultImpl({required this.gid});

  @override
  final int gid;

  @override
  String toString() {
    return 'HomeEvent.getGenreResult(gid: $gid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetGenreResultImpl &&
            (identical(other.gid, gid) || other.gid == gid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetGenreResultImplCopyWith<_$GetGenreResultImpl> get copyWith =>
      __$$GetGenreResultImplCopyWithImpl<_$GetGenreResultImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeIndicator,
    required TResult Function() getcarouselPosters,
    required TResult Function() getTopTv,
    required TResult Function() getTopMovie,
    required TResult Function() getTopRatedMovie,
    required TResult Function() getTopRatedTv,
    required TResult Function() getGenres,
    required TResult Function(int gid) getGenreResult,
  }) {
    return getGenreResult(gid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeIndicator,
    TResult? Function()? getcarouselPosters,
    TResult? Function()? getTopTv,
    TResult? Function()? getTopMovie,
    TResult? Function()? getTopRatedMovie,
    TResult? Function()? getTopRatedTv,
    TResult? Function()? getGenres,
    TResult? Function(int gid)? getGenreResult,
  }) {
    return getGenreResult?.call(gid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeIndicator,
    TResult Function()? getcarouselPosters,
    TResult Function()? getTopTv,
    TResult Function()? getTopMovie,
    TResult Function()? getTopRatedMovie,
    TResult Function()? getTopRatedTv,
    TResult Function()? getGenres,
    TResult Function(int gid)? getGenreResult,
    required TResult orElse(),
  }) {
    if (getGenreResult != null) {
      return getGenreResult(gid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeIndicator value) changeIndicator,
    required TResult Function(_GetCarouselPosters value) getcarouselPosters,
    required TResult Function(_GetTopTv value) getTopTv,
    required TResult Function(_GetTopMovie value) getTopMovie,
    required TResult Function(_GetTopRatedMovie value) getTopRatedMovie,
    required TResult Function(_GetTopRatedTv value) getTopRatedTv,
    required TResult Function(_GetGenres value) getGenres,
    required TResult Function(_GetGenreResult value) getGenreResult,
  }) {
    return getGenreResult(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeIndicator value)? changeIndicator,
    TResult? Function(_GetCarouselPosters value)? getcarouselPosters,
    TResult? Function(_GetTopTv value)? getTopTv,
    TResult? Function(_GetTopMovie value)? getTopMovie,
    TResult? Function(_GetTopRatedMovie value)? getTopRatedMovie,
    TResult? Function(_GetTopRatedTv value)? getTopRatedTv,
    TResult? Function(_GetGenres value)? getGenres,
    TResult? Function(_GetGenreResult value)? getGenreResult,
  }) {
    return getGenreResult?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeIndicator value)? changeIndicator,
    TResult Function(_GetCarouselPosters value)? getcarouselPosters,
    TResult Function(_GetTopTv value)? getTopTv,
    TResult Function(_GetTopMovie value)? getTopMovie,
    TResult Function(_GetTopRatedMovie value)? getTopRatedMovie,
    TResult Function(_GetTopRatedTv value)? getTopRatedTv,
    TResult Function(_GetGenres value)? getGenres,
    TResult Function(_GetGenreResult value)? getGenreResult,
    required TResult orElse(),
  }) {
    if (getGenreResult != null) {
      return getGenreResult(this);
    }
    return orElse();
  }
}

abstract class _GetGenreResult implements HomeEvent {
  const factory _GetGenreResult({required final int gid}) =
      _$GetGenreResultImpl;

  int get gid;
  @JsonKey(ignore: true)
  _$$GetGenreResultImplCopyWith<_$GetGenreResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  int get carouselIndex => throw _privateConstructorUsedError;
  bool get isCarouselLoading => throw _privateConstructorUsedError;
  bool get isCarouselError => throw _privateConstructorUsedError;
  List<TMDBResponse> get carouselList => throw _privateConstructorUsedError;
  bool get isTopTvError => throw _privateConstructorUsedError;
  bool get isTopMovieError => throw _privateConstructorUsedError;
  bool get isTopTvLoading => throw _privateConstructorUsedError;
  bool get isTopMovieLoading => throw _privateConstructorUsedError;
  List<TMDBResponse> get topTvList => throw _privateConstructorUsedError;
  List<TMDBResponse> get topMovieList => throw _privateConstructorUsedError;
  List<TMDBResponse> get topRatedTv => throw _privateConstructorUsedError;
  List<TMDBResponse> get topRatedMovies => throw _privateConstructorUsedError;
  bool get isTopRatedMovieError => throw _privateConstructorUsedError;
  bool get isTopRatedTvError => throw _privateConstructorUsedError;
  bool get isTopRatedMovieLoading => throw _privateConstructorUsedError;
  bool get isTopRatedTvLoading => throw _privateConstructorUsedError;
  List<Genre> get genres => throw _privateConstructorUsedError;
  List<TMDBResponse> get genreResult => throw _privateConstructorUsedError;
  bool get isGenreLoading => throw _privateConstructorUsedError;
  bool get isGenreError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {int carouselIndex,
      bool isCarouselLoading,
      bool isCarouselError,
      List<TMDBResponse> carouselList,
      bool isTopTvError,
      bool isTopMovieError,
      bool isTopTvLoading,
      bool isTopMovieLoading,
      List<TMDBResponse> topTvList,
      List<TMDBResponse> topMovieList,
      List<TMDBResponse> topRatedTv,
      List<TMDBResponse> topRatedMovies,
      bool isTopRatedMovieError,
      bool isTopRatedTvError,
      bool isTopRatedMovieLoading,
      bool isTopRatedTvLoading,
      List<Genre> genres,
      List<TMDBResponse> genreResult,
      bool isGenreLoading,
      bool isGenreError});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carouselIndex = null,
    Object? isCarouselLoading = null,
    Object? isCarouselError = null,
    Object? carouselList = null,
    Object? isTopTvError = null,
    Object? isTopMovieError = null,
    Object? isTopTvLoading = null,
    Object? isTopMovieLoading = null,
    Object? topTvList = null,
    Object? topMovieList = null,
    Object? topRatedTv = null,
    Object? topRatedMovies = null,
    Object? isTopRatedMovieError = null,
    Object? isTopRatedTvError = null,
    Object? isTopRatedMovieLoading = null,
    Object? isTopRatedTvLoading = null,
    Object? genres = null,
    Object? genreResult = null,
    Object? isGenreLoading = null,
    Object? isGenreError = null,
  }) {
    return _then(_value.copyWith(
      carouselIndex: null == carouselIndex
          ? _value.carouselIndex
          : carouselIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isCarouselLoading: null == isCarouselLoading
          ? _value.isCarouselLoading
          : isCarouselLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isCarouselError: null == isCarouselError
          ? _value.isCarouselError
          : isCarouselError // ignore: cast_nullable_to_non_nullable
              as bool,
      carouselList: null == carouselList
          ? _value.carouselList
          : carouselList // ignore: cast_nullable_to_non_nullable
              as List<TMDBResponse>,
      isTopTvError: null == isTopTvError
          ? _value.isTopTvError
          : isTopTvError // ignore: cast_nullable_to_non_nullable
              as bool,
      isTopMovieError: null == isTopMovieError
          ? _value.isTopMovieError
          : isTopMovieError // ignore: cast_nullable_to_non_nullable
              as bool,
      isTopTvLoading: null == isTopTvLoading
          ? _value.isTopTvLoading
          : isTopTvLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isTopMovieLoading: null == isTopMovieLoading
          ? _value.isTopMovieLoading
          : isTopMovieLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      topTvList: null == topTvList
          ? _value.topTvList
          : topTvList // ignore: cast_nullable_to_non_nullable
              as List<TMDBResponse>,
      topMovieList: null == topMovieList
          ? _value.topMovieList
          : topMovieList // ignore: cast_nullable_to_non_nullable
              as List<TMDBResponse>,
      topRatedTv: null == topRatedTv
          ? _value.topRatedTv
          : topRatedTv // ignore: cast_nullable_to_non_nullable
              as List<TMDBResponse>,
      topRatedMovies: null == topRatedMovies
          ? _value.topRatedMovies
          : topRatedMovies // ignore: cast_nullable_to_non_nullable
              as List<TMDBResponse>,
      isTopRatedMovieError: null == isTopRatedMovieError
          ? _value.isTopRatedMovieError
          : isTopRatedMovieError // ignore: cast_nullable_to_non_nullable
              as bool,
      isTopRatedTvError: null == isTopRatedTvError
          ? _value.isTopRatedTvError
          : isTopRatedTvError // ignore: cast_nullable_to_non_nullable
              as bool,
      isTopRatedMovieLoading: null == isTopRatedMovieLoading
          ? _value.isTopRatedMovieLoading
          : isTopRatedMovieLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isTopRatedTvLoading: null == isTopRatedTvLoading
          ? _value.isTopRatedTvLoading
          : isTopRatedTvLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      genres: null == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>,
      genreResult: null == genreResult
          ? _value.genreResult
          : genreResult // ignore: cast_nullable_to_non_nullable
              as List<TMDBResponse>,
      isGenreLoading: null == isGenreLoading
          ? _value.isGenreLoading
          : isGenreLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isGenreError: null == isGenreError
          ? _value.isGenreError
          : isGenreError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int carouselIndex,
      bool isCarouselLoading,
      bool isCarouselError,
      List<TMDBResponse> carouselList,
      bool isTopTvError,
      bool isTopMovieError,
      bool isTopTvLoading,
      bool isTopMovieLoading,
      List<TMDBResponse> topTvList,
      List<TMDBResponse> topMovieList,
      List<TMDBResponse> topRatedTv,
      List<TMDBResponse> topRatedMovies,
      bool isTopRatedMovieError,
      bool isTopRatedTvError,
      bool isTopRatedMovieLoading,
      bool isTopRatedTvLoading,
      List<Genre> genres,
      List<TMDBResponse> genreResult,
      bool isGenreLoading,
      bool isGenreError});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carouselIndex = null,
    Object? isCarouselLoading = null,
    Object? isCarouselError = null,
    Object? carouselList = null,
    Object? isTopTvError = null,
    Object? isTopMovieError = null,
    Object? isTopTvLoading = null,
    Object? isTopMovieLoading = null,
    Object? topTvList = null,
    Object? topMovieList = null,
    Object? topRatedTv = null,
    Object? topRatedMovies = null,
    Object? isTopRatedMovieError = null,
    Object? isTopRatedTvError = null,
    Object? isTopRatedMovieLoading = null,
    Object? isTopRatedTvLoading = null,
    Object? genres = null,
    Object? genreResult = null,
    Object? isGenreLoading = null,
    Object? isGenreError = null,
  }) {
    return _then(_$HomeStateImpl(
      carouselIndex: null == carouselIndex
          ? _value.carouselIndex
          : carouselIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isCarouselLoading: null == isCarouselLoading
          ? _value.isCarouselLoading
          : isCarouselLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isCarouselError: null == isCarouselError
          ? _value.isCarouselError
          : isCarouselError // ignore: cast_nullable_to_non_nullable
              as bool,
      carouselList: null == carouselList
          ? _value._carouselList
          : carouselList // ignore: cast_nullable_to_non_nullable
              as List<TMDBResponse>,
      isTopTvError: null == isTopTvError
          ? _value.isTopTvError
          : isTopTvError // ignore: cast_nullable_to_non_nullable
              as bool,
      isTopMovieError: null == isTopMovieError
          ? _value.isTopMovieError
          : isTopMovieError // ignore: cast_nullable_to_non_nullable
              as bool,
      isTopTvLoading: null == isTopTvLoading
          ? _value.isTopTvLoading
          : isTopTvLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isTopMovieLoading: null == isTopMovieLoading
          ? _value.isTopMovieLoading
          : isTopMovieLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      topTvList: null == topTvList
          ? _value._topTvList
          : topTvList // ignore: cast_nullable_to_non_nullable
              as List<TMDBResponse>,
      topMovieList: null == topMovieList
          ? _value._topMovieList
          : topMovieList // ignore: cast_nullable_to_non_nullable
              as List<TMDBResponse>,
      topRatedTv: null == topRatedTv
          ? _value._topRatedTv
          : topRatedTv // ignore: cast_nullable_to_non_nullable
              as List<TMDBResponse>,
      topRatedMovies: null == topRatedMovies
          ? _value._topRatedMovies
          : topRatedMovies // ignore: cast_nullable_to_non_nullable
              as List<TMDBResponse>,
      isTopRatedMovieError: null == isTopRatedMovieError
          ? _value.isTopRatedMovieError
          : isTopRatedMovieError // ignore: cast_nullable_to_non_nullable
              as bool,
      isTopRatedTvError: null == isTopRatedTvError
          ? _value.isTopRatedTvError
          : isTopRatedTvError // ignore: cast_nullable_to_non_nullable
              as bool,
      isTopRatedMovieLoading: null == isTopRatedMovieLoading
          ? _value.isTopRatedMovieLoading
          : isTopRatedMovieLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isTopRatedTvLoading: null == isTopRatedTvLoading
          ? _value.isTopRatedTvLoading
          : isTopRatedTvLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      genres: null == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>,
      genreResult: null == genreResult
          ? _value._genreResult
          : genreResult // ignore: cast_nullable_to_non_nullable
              as List<TMDBResponse>,
      isGenreLoading: null == isGenreLoading
          ? _value.isGenreLoading
          : isGenreLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isGenreError: null == isGenreError
          ? _value.isGenreError
          : isGenreError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {required this.carouselIndex,
      required this.isCarouselLoading,
      required this.isCarouselError,
      required final List<TMDBResponse> carouselList,
      required this.isTopTvError,
      required this.isTopMovieError,
      required this.isTopTvLoading,
      required this.isTopMovieLoading,
      required final List<TMDBResponse> topTvList,
      required final List<TMDBResponse> topMovieList,
      required final List<TMDBResponse> topRatedTv,
      required final List<TMDBResponse> topRatedMovies,
      required this.isTopRatedMovieError,
      required this.isTopRatedTvError,
      required this.isTopRatedMovieLoading,
      required this.isTopRatedTvLoading,
      required final List<Genre> genres,
      required final List<TMDBResponse> genreResult,
      required this.isGenreLoading,
      required this.isGenreError})
      : _carouselList = carouselList,
        _topTvList = topTvList,
        _topMovieList = topMovieList,
        _topRatedTv = topRatedTv,
        _topRatedMovies = topRatedMovies,
        _genres = genres,
        _genreResult = genreResult;

  @override
  final int carouselIndex;
  @override
  final bool isCarouselLoading;
  @override
  final bool isCarouselError;
  final List<TMDBResponse> _carouselList;
  @override
  List<TMDBResponse> get carouselList {
    if (_carouselList is EqualUnmodifiableListView) return _carouselList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_carouselList);
  }

  @override
  final bool isTopTvError;
  @override
  final bool isTopMovieError;
  @override
  final bool isTopTvLoading;
  @override
  final bool isTopMovieLoading;
  final List<TMDBResponse> _topTvList;
  @override
  List<TMDBResponse> get topTvList {
    if (_topTvList is EqualUnmodifiableListView) return _topTvList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topTvList);
  }

  final List<TMDBResponse> _topMovieList;
  @override
  List<TMDBResponse> get topMovieList {
    if (_topMovieList is EqualUnmodifiableListView) return _topMovieList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topMovieList);
  }

  final List<TMDBResponse> _topRatedTv;
  @override
  List<TMDBResponse> get topRatedTv {
    if (_topRatedTv is EqualUnmodifiableListView) return _topRatedTv;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topRatedTv);
  }

  final List<TMDBResponse> _topRatedMovies;
  @override
  List<TMDBResponse> get topRatedMovies {
    if (_topRatedMovies is EqualUnmodifiableListView) return _topRatedMovies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topRatedMovies);
  }

  @override
  final bool isTopRatedMovieError;
  @override
  final bool isTopRatedTvError;
  @override
  final bool isTopRatedMovieLoading;
  @override
  final bool isTopRatedTvLoading;
  final List<Genre> _genres;
  @override
  List<Genre> get genres {
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  final List<TMDBResponse> _genreResult;
  @override
  List<TMDBResponse> get genreResult {
    if (_genreResult is EqualUnmodifiableListView) return _genreResult;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genreResult);
  }

  @override
  final bool isGenreLoading;
  @override
  final bool isGenreError;

  @override
  String toString() {
    return 'HomeState(carouselIndex: $carouselIndex, isCarouselLoading: $isCarouselLoading, isCarouselError: $isCarouselError, carouselList: $carouselList, isTopTvError: $isTopTvError, isTopMovieError: $isTopMovieError, isTopTvLoading: $isTopTvLoading, isTopMovieLoading: $isTopMovieLoading, topTvList: $topTvList, topMovieList: $topMovieList, topRatedTv: $topRatedTv, topRatedMovies: $topRatedMovies, isTopRatedMovieError: $isTopRatedMovieError, isTopRatedTvError: $isTopRatedTvError, isTopRatedMovieLoading: $isTopRatedMovieLoading, isTopRatedTvLoading: $isTopRatedTvLoading, genres: $genres, genreResult: $genreResult, isGenreLoading: $isGenreLoading, isGenreError: $isGenreError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.carouselIndex, carouselIndex) ||
                other.carouselIndex == carouselIndex) &&
            (identical(other.isCarouselLoading, isCarouselLoading) ||
                other.isCarouselLoading == isCarouselLoading) &&
            (identical(other.isCarouselError, isCarouselError) ||
                other.isCarouselError == isCarouselError) &&
            const DeepCollectionEquality()
                .equals(other._carouselList, _carouselList) &&
            (identical(other.isTopTvError, isTopTvError) ||
                other.isTopTvError == isTopTvError) &&
            (identical(other.isTopMovieError, isTopMovieError) ||
                other.isTopMovieError == isTopMovieError) &&
            (identical(other.isTopTvLoading, isTopTvLoading) ||
                other.isTopTvLoading == isTopTvLoading) &&
            (identical(other.isTopMovieLoading, isTopMovieLoading) ||
                other.isTopMovieLoading == isTopMovieLoading) &&
            const DeepCollectionEquality()
                .equals(other._topTvList, _topTvList) &&
            const DeepCollectionEquality()
                .equals(other._topMovieList, _topMovieList) &&
            const DeepCollectionEquality()
                .equals(other._topRatedTv, _topRatedTv) &&
            const DeepCollectionEquality()
                .equals(other._topRatedMovies, _topRatedMovies) &&
            (identical(other.isTopRatedMovieError, isTopRatedMovieError) ||
                other.isTopRatedMovieError == isTopRatedMovieError) &&
            (identical(other.isTopRatedTvError, isTopRatedTvError) ||
                other.isTopRatedTvError == isTopRatedTvError) &&
            (identical(other.isTopRatedMovieLoading, isTopRatedMovieLoading) ||
                other.isTopRatedMovieLoading == isTopRatedMovieLoading) &&
            (identical(other.isTopRatedTvLoading, isTopRatedTvLoading) ||
                other.isTopRatedTvLoading == isTopRatedTvLoading) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            const DeepCollectionEquality()
                .equals(other._genreResult, _genreResult) &&
            (identical(other.isGenreLoading, isGenreLoading) ||
                other.isGenreLoading == isGenreLoading) &&
            (identical(other.isGenreError, isGenreError) ||
                other.isGenreError == isGenreError));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        carouselIndex,
        isCarouselLoading,
        isCarouselError,
        const DeepCollectionEquality().hash(_carouselList),
        isTopTvError,
        isTopMovieError,
        isTopTvLoading,
        isTopMovieLoading,
        const DeepCollectionEquality().hash(_topTvList),
        const DeepCollectionEquality().hash(_topMovieList),
        const DeepCollectionEquality().hash(_topRatedTv),
        const DeepCollectionEquality().hash(_topRatedMovies),
        isTopRatedMovieError,
        isTopRatedTvError,
        isTopRatedMovieLoading,
        isTopRatedTvLoading,
        const DeepCollectionEquality().hash(_genres),
        const DeepCollectionEquality().hash(_genreResult),
        isGenreLoading,
        isGenreError
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {required final int carouselIndex,
      required final bool isCarouselLoading,
      required final bool isCarouselError,
      required final List<TMDBResponse> carouselList,
      required final bool isTopTvError,
      required final bool isTopMovieError,
      required final bool isTopTvLoading,
      required final bool isTopMovieLoading,
      required final List<TMDBResponse> topTvList,
      required final List<TMDBResponse> topMovieList,
      required final List<TMDBResponse> topRatedTv,
      required final List<TMDBResponse> topRatedMovies,
      required final bool isTopRatedMovieError,
      required final bool isTopRatedTvError,
      required final bool isTopRatedMovieLoading,
      required final bool isTopRatedTvLoading,
      required final List<Genre> genres,
      required final List<TMDBResponse> genreResult,
      required final bool isGenreLoading,
      required final bool isGenreError}) = _$HomeStateImpl;

  @override
  int get carouselIndex;
  @override
  bool get isCarouselLoading;
  @override
  bool get isCarouselError;
  @override
  List<TMDBResponse> get carouselList;
  @override
  bool get isTopTvError;
  @override
  bool get isTopMovieError;
  @override
  bool get isTopTvLoading;
  @override
  bool get isTopMovieLoading;
  @override
  List<TMDBResponse> get topTvList;
  @override
  List<TMDBResponse> get topMovieList;
  @override
  List<TMDBResponse> get topRatedTv;
  @override
  List<TMDBResponse> get topRatedMovies;
  @override
  bool get isTopRatedMovieError;
  @override
  bool get isTopRatedTvError;
  @override
  bool get isTopRatedMovieLoading;
  @override
  bool get isTopRatedTvLoading;
  @override
  List<Genre> get genres;
  @override
  List<TMDBResponse> get genreResult;
  @override
  bool get isGenreLoading;
  @override
  bool get isGenreError;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
