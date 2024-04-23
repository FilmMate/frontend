// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'explore_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ExploreEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeTab,
    required TResult Function(String lang) getLatestMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeTab,
    TResult? Function(String lang)? getLatestMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeTab,
    TResult Function(String lang)? getLatestMovies,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeTab value) changeTab,
    required TResult Function(_GetLatestMovies value) getLatestMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeTab value)? changeTab,
    TResult? Function(_GetLatestMovies value)? getLatestMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeTab value)? changeTab,
    TResult Function(_GetLatestMovies value)? getLatestMovies,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExploreEventCopyWith<$Res> {
  factory $ExploreEventCopyWith(
          ExploreEvent value, $Res Function(ExploreEvent) then) =
      _$ExploreEventCopyWithImpl<$Res, ExploreEvent>;
}

/// @nodoc
class _$ExploreEventCopyWithImpl<$Res, $Val extends ExploreEvent>
    implements $ExploreEventCopyWith<$Res> {
  _$ExploreEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChangeTabImplCopyWith<$Res> {
  factory _$$ChangeTabImplCopyWith(
          _$ChangeTabImpl value, $Res Function(_$ChangeTabImpl) then) =
      __$$ChangeTabImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$ChangeTabImplCopyWithImpl<$Res>
    extends _$ExploreEventCopyWithImpl<$Res, _$ChangeTabImpl>
    implements _$$ChangeTabImplCopyWith<$Res> {
  __$$ChangeTabImplCopyWithImpl(
      _$ChangeTabImpl _value, $Res Function(_$ChangeTabImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$ChangeTabImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeTabImpl implements _ChangeTab {
  const _$ChangeTabImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'ExploreEvent.changeTab(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeTabImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeTabImplCopyWith<_$ChangeTabImpl> get copyWith =>
      __$$ChangeTabImplCopyWithImpl<_$ChangeTabImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeTab,
    required TResult Function(String lang) getLatestMovies,
  }) {
    return changeTab(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeTab,
    TResult? Function(String lang)? getLatestMovies,
  }) {
    return changeTab?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeTab,
    TResult Function(String lang)? getLatestMovies,
    required TResult orElse(),
  }) {
    if (changeTab != null) {
      return changeTab(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeTab value) changeTab,
    required TResult Function(_GetLatestMovies value) getLatestMovies,
  }) {
    return changeTab(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeTab value)? changeTab,
    TResult? Function(_GetLatestMovies value)? getLatestMovies,
  }) {
    return changeTab?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeTab value)? changeTab,
    TResult Function(_GetLatestMovies value)? getLatestMovies,
    required TResult orElse(),
  }) {
    if (changeTab != null) {
      return changeTab(this);
    }
    return orElse();
  }
}

abstract class _ChangeTab implements ExploreEvent {
  const factory _ChangeTab({required final int index}) = _$ChangeTabImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$ChangeTabImplCopyWith<_$ChangeTabImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetLatestMoviesImplCopyWith<$Res> {
  factory _$$GetLatestMoviesImplCopyWith(_$GetLatestMoviesImpl value,
          $Res Function(_$GetLatestMoviesImpl) then) =
      __$$GetLatestMoviesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String lang});
}

/// @nodoc
class __$$GetLatestMoviesImplCopyWithImpl<$Res>
    extends _$ExploreEventCopyWithImpl<$Res, _$GetLatestMoviesImpl>
    implements _$$GetLatestMoviesImplCopyWith<$Res> {
  __$$GetLatestMoviesImplCopyWithImpl(
      _$GetLatestMoviesImpl _value, $Res Function(_$GetLatestMoviesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lang = null,
  }) {
    return _then(_$GetLatestMoviesImpl(
      lang: null == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetLatestMoviesImpl implements _GetLatestMovies {
  const _$GetLatestMoviesImpl({required this.lang});

  @override
  final String lang;

  @override
  String toString() {
    return 'ExploreEvent.getLatestMovies(lang: $lang)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetLatestMoviesImpl &&
            (identical(other.lang, lang) || other.lang == lang));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lang);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetLatestMoviesImplCopyWith<_$GetLatestMoviesImpl> get copyWith =>
      __$$GetLatestMoviesImplCopyWithImpl<_$GetLatestMoviesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeTab,
    required TResult Function(String lang) getLatestMovies,
  }) {
    return getLatestMovies(lang);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeTab,
    TResult? Function(String lang)? getLatestMovies,
  }) {
    return getLatestMovies?.call(lang);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeTab,
    TResult Function(String lang)? getLatestMovies,
    required TResult orElse(),
  }) {
    if (getLatestMovies != null) {
      return getLatestMovies(lang);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeTab value) changeTab,
    required TResult Function(_GetLatestMovies value) getLatestMovies,
  }) {
    return getLatestMovies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeTab value)? changeTab,
    TResult? Function(_GetLatestMovies value)? getLatestMovies,
  }) {
    return getLatestMovies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeTab value)? changeTab,
    TResult Function(_GetLatestMovies value)? getLatestMovies,
    required TResult orElse(),
  }) {
    if (getLatestMovies != null) {
      return getLatestMovies(this);
    }
    return orElse();
  }
}

abstract class _GetLatestMovies implements ExploreEvent {
  const factory _GetLatestMovies({required final String lang}) =
      _$GetLatestMoviesImpl;

  String get lang;
  @JsonKey(ignore: true)
  _$$GetLatestMoviesImplCopyWith<_$GetLatestMoviesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ExploreState {
  int get selectedTab => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  List<GetLatestResponse> get latestMovies =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExploreStateCopyWith<ExploreState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExploreStateCopyWith<$Res> {
  factory $ExploreStateCopyWith(
          ExploreState value, $Res Function(ExploreState) then) =
      _$ExploreStateCopyWithImpl<$Res, ExploreState>;
  @useResult
  $Res call(
      {int selectedTab,
      bool isLoading,
      bool isError,
      List<GetLatestResponse> latestMovies});
}

/// @nodoc
class _$ExploreStateCopyWithImpl<$Res, $Val extends ExploreState>
    implements $ExploreStateCopyWith<$Res> {
  _$ExploreStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTab = null,
    Object? isLoading = null,
    Object? isError = null,
    Object? latestMovies = null,
  }) {
    return _then(_value.copyWith(
      selectedTab: null == selectedTab
          ? _value.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      latestMovies: null == latestMovies
          ? _value.latestMovies
          : latestMovies // ignore: cast_nullable_to_non_nullable
              as List<GetLatestResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExploreStateImplCopyWith<$Res>
    implements $ExploreStateCopyWith<$Res> {
  factory _$$ExploreStateImplCopyWith(
          _$ExploreStateImpl value, $Res Function(_$ExploreStateImpl) then) =
      __$$ExploreStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int selectedTab,
      bool isLoading,
      bool isError,
      List<GetLatestResponse> latestMovies});
}

/// @nodoc
class __$$ExploreStateImplCopyWithImpl<$Res>
    extends _$ExploreStateCopyWithImpl<$Res, _$ExploreStateImpl>
    implements _$$ExploreStateImplCopyWith<$Res> {
  __$$ExploreStateImplCopyWithImpl(
      _$ExploreStateImpl _value, $Res Function(_$ExploreStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTab = null,
    Object? isLoading = null,
    Object? isError = null,
    Object? latestMovies = null,
  }) {
    return _then(_$ExploreStateImpl(
      selectedTab: null == selectedTab
          ? _value.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      latestMovies: null == latestMovies
          ? _value._latestMovies
          : latestMovies // ignore: cast_nullable_to_non_nullable
              as List<GetLatestResponse>,
    ));
  }
}

/// @nodoc

class _$ExploreStateImpl implements _ExploreState {
  const _$ExploreStateImpl(
      {required this.selectedTab,
      required this.isLoading,
      required this.isError,
      required final List<GetLatestResponse> latestMovies})
      : _latestMovies = latestMovies;

  @override
  final int selectedTab;
  @override
  final bool isLoading;
  @override
  final bool isError;
  final List<GetLatestResponse> _latestMovies;
  @override
  List<GetLatestResponse> get latestMovies {
    if (_latestMovies is EqualUnmodifiableListView) return _latestMovies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_latestMovies);
  }

  @override
  String toString() {
    return 'ExploreState(selectedTab: $selectedTab, isLoading: $isLoading, isError: $isError, latestMovies: $latestMovies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExploreStateImpl &&
            (identical(other.selectedTab, selectedTab) ||
                other.selectedTab == selectedTab) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            const DeepCollectionEquality()
                .equals(other._latestMovies, _latestMovies));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedTab, isLoading, isError,
      const DeepCollectionEquality().hash(_latestMovies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExploreStateImplCopyWith<_$ExploreStateImpl> get copyWith =>
      __$$ExploreStateImplCopyWithImpl<_$ExploreStateImpl>(this, _$identity);
}

abstract class _ExploreState implements ExploreState {
  const factory _ExploreState(
          {required final int selectedTab,
          required final bool isLoading,
          required final bool isError,
          required final List<GetLatestResponse> latestMovies}) =
      _$ExploreStateImpl;

  @override
  int get selectedTab;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  List<GetLatestResponse> get latestMovies;
  @override
  @JsonKey(ignore: true)
  _$$ExploreStateImplCopyWith<_$ExploreStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
