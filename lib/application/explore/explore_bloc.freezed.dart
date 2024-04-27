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
    required TResult Function(bool trigger) triggerDetail,
    required TResult Function() getLatestTv,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeTab,
    TResult? Function(String lang)? getLatestMovies,
    TResult? Function(bool trigger)? triggerDetail,
    TResult? Function()? getLatestTv,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeTab,
    TResult Function(String lang)? getLatestMovies,
    TResult Function(bool trigger)? triggerDetail,
    TResult Function()? getLatestTv,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeTab value) changeTab,
    required TResult Function(_GetLatestMovies value) getLatestMovies,
    required TResult Function(_TriggerDetail value) triggerDetail,
    required TResult Function(_GetLatestTV value) getLatestTv,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeTab value)? changeTab,
    TResult? Function(_GetLatestMovies value)? getLatestMovies,
    TResult? Function(_TriggerDetail value)? triggerDetail,
    TResult? Function(_GetLatestTV value)? getLatestTv,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeTab value)? changeTab,
    TResult Function(_GetLatestMovies value)? getLatestMovies,
    TResult Function(_TriggerDetail value)? triggerDetail,
    TResult Function(_GetLatestTV value)? getLatestTv,
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
    required TResult Function(bool trigger) triggerDetail,
    required TResult Function() getLatestTv,
  }) {
    return changeTab(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeTab,
    TResult? Function(String lang)? getLatestMovies,
    TResult? Function(bool trigger)? triggerDetail,
    TResult? Function()? getLatestTv,
  }) {
    return changeTab?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeTab,
    TResult Function(String lang)? getLatestMovies,
    TResult Function(bool trigger)? triggerDetail,
    TResult Function()? getLatestTv,
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
    required TResult Function(_TriggerDetail value) triggerDetail,
    required TResult Function(_GetLatestTV value) getLatestTv,
  }) {
    return changeTab(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeTab value)? changeTab,
    TResult? Function(_GetLatestMovies value)? getLatestMovies,
    TResult? Function(_TriggerDetail value)? triggerDetail,
    TResult? Function(_GetLatestTV value)? getLatestTv,
  }) {
    return changeTab?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeTab value)? changeTab,
    TResult Function(_GetLatestMovies value)? getLatestMovies,
    TResult Function(_TriggerDetail value)? triggerDetail,
    TResult Function(_GetLatestTV value)? getLatestTv,
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
    required TResult Function(bool trigger) triggerDetail,
    required TResult Function() getLatestTv,
  }) {
    return getLatestMovies(lang);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeTab,
    TResult? Function(String lang)? getLatestMovies,
    TResult? Function(bool trigger)? triggerDetail,
    TResult? Function()? getLatestTv,
  }) {
    return getLatestMovies?.call(lang);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeTab,
    TResult Function(String lang)? getLatestMovies,
    TResult Function(bool trigger)? triggerDetail,
    TResult Function()? getLatestTv,
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
    required TResult Function(_TriggerDetail value) triggerDetail,
    required TResult Function(_GetLatestTV value) getLatestTv,
  }) {
    return getLatestMovies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeTab value)? changeTab,
    TResult? Function(_GetLatestMovies value)? getLatestMovies,
    TResult? Function(_TriggerDetail value)? triggerDetail,
    TResult? Function(_GetLatestTV value)? getLatestTv,
  }) {
    return getLatestMovies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeTab value)? changeTab,
    TResult Function(_GetLatestMovies value)? getLatestMovies,
    TResult Function(_TriggerDetail value)? triggerDetail,
    TResult Function(_GetLatestTV value)? getLatestTv,
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
abstract class _$$TriggerDetailImplCopyWith<$Res> {
  factory _$$TriggerDetailImplCopyWith(
          _$TriggerDetailImpl value, $Res Function(_$TriggerDetailImpl) then) =
      __$$TriggerDetailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool trigger});
}

/// @nodoc
class __$$TriggerDetailImplCopyWithImpl<$Res>
    extends _$ExploreEventCopyWithImpl<$Res, _$TriggerDetailImpl>
    implements _$$TriggerDetailImplCopyWith<$Res> {
  __$$TriggerDetailImplCopyWithImpl(
      _$TriggerDetailImpl _value, $Res Function(_$TriggerDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trigger = null,
  }) {
    return _then(_$TriggerDetailImpl(
      trigger: null == trigger
          ? _value.trigger
          : trigger // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TriggerDetailImpl implements _TriggerDetail {
  const _$TriggerDetailImpl({required this.trigger});

  @override
  final bool trigger;

  @override
  String toString() {
    return 'ExploreEvent.triggerDetail(trigger: $trigger)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TriggerDetailImpl &&
            (identical(other.trigger, trigger) || other.trigger == trigger));
  }

  @override
  int get hashCode => Object.hash(runtimeType, trigger);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TriggerDetailImplCopyWith<_$TriggerDetailImpl> get copyWith =>
      __$$TriggerDetailImplCopyWithImpl<_$TriggerDetailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeTab,
    required TResult Function(String lang) getLatestMovies,
    required TResult Function(bool trigger) triggerDetail,
    required TResult Function() getLatestTv,
  }) {
    return triggerDetail(trigger);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeTab,
    TResult? Function(String lang)? getLatestMovies,
    TResult? Function(bool trigger)? triggerDetail,
    TResult? Function()? getLatestTv,
  }) {
    return triggerDetail?.call(trigger);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeTab,
    TResult Function(String lang)? getLatestMovies,
    TResult Function(bool trigger)? triggerDetail,
    TResult Function()? getLatestTv,
    required TResult orElse(),
  }) {
    if (triggerDetail != null) {
      return triggerDetail(trigger);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeTab value) changeTab,
    required TResult Function(_GetLatestMovies value) getLatestMovies,
    required TResult Function(_TriggerDetail value) triggerDetail,
    required TResult Function(_GetLatestTV value) getLatestTv,
  }) {
    return triggerDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeTab value)? changeTab,
    TResult? Function(_GetLatestMovies value)? getLatestMovies,
    TResult? Function(_TriggerDetail value)? triggerDetail,
    TResult? Function(_GetLatestTV value)? getLatestTv,
  }) {
    return triggerDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeTab value)? changeTab,
    TResult Function(_GetLatestMovies value)? getLatestMovies,
    TResult Function(_TriggerDetail value)? triggerDetail,
    TResult Function(_GetLatestTV value)? getLatestTv,
    required TResult orElse(),
  }) {
    if (triggerDetail != null) {
      return triggerDetail(this);
    }
    return orElse();
  }
}

abstract class _TriggerDetail implements ExploreEvent {
  const factory _TriggerDetail({required final bool trigger}) =
      _$TriggerDetailImpl;

  bool get trigger;
  @JsonKey(ignore: true)
  _$$TriggerDetailImplCopyWith<_$TriggerDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetLatestTVImplCopyWith<$Res> {
  factory _$$GetLatestTVImplCopyWith(
          _$GetLatestTVImpl value, $Res Function(_$GetLatestTVImpl) then) =
      __$$GetLatestTVImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetLatestTVImplCopyWithImpl<$Res>
    extends _$ExploreEventCopyWithImpl<$Res, _$GetLatestTVImpl>
    implements _$$GetLatestTVImplCopyWith<$Res> {
  __$$GetLatestTVImplCopyWithImpl(
      _$GetLatestTVImpl _value, $Res Function(_$GetLatestTVImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetLatestTVImpl implements _GetLatestTV {
  const _$GetLatestTVImpl();

  @override
  String toString() {
    return 'ExploreEvent.getLatestTv()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetLatestTVImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeTab,
    required TResult Function(String lang) getLatestMovies,
    required TResult Function(bool trigger) triggerDetail,
    required TResult Function() getLatestTv,
  }) {
    return getLatestTv();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeTab,
    TResult? Function(String lang)? getLatestMovies,
    TResult? Function(bool trigger)? triggerDetail,
    TResult? Function()? getLatestTv,
  }) {
    return getLatestTv?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeTab,
    TResult Function(String lang)? getLatestMovies,
    TResult Function(bool trigger)? triggerDetail,
    TResult Function()? getLatestTv,
    required TResult orElse(),
  }) {
    if (getLatestTv != null) {
      return getLatestTv();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeTab value) changeTab,
    required TResult Function(_GetLatestMovies value) getLatestMovies,
    required TResult Function(_TriggerDetail value) triggerDetail,
    required TResult Function(_GetLatestTV value) getLatestTv,
  }) {
    return getLatestTv(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeTab value)? changeTab,
    TResult? Function(_GetLatestMovies value)? getLatestMovies,
    TResult? Function(_TriggerDetail value)? triggerDetail,
    TResult? Function(_GetLatestTV value)? getLatestTv,
  }) {
    return getLatestTv?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeTab value)? changeTab,
    TResult Function(_GetLatestMovies value)? getLatestMovies,
    TResult Function(_TriggerDetail value)? triggerDetail,
    TResult Function(_GetLatestTV value)? getLatestTv,
    required TResult orElse(),
  }) {
    if (getLatestTv != null) {
      return getLatestTv(this);
    }
    return orElse();
  }
}

abstract class _GetLatestTV implements ExploreEvent {
  const factory _GetLatestTV() = _$GetLatestTVImpl;
}

/// @nodoc
mixin _$ExploreState {
  int get selectedTab => throw _privateConstructorUsedError;
  bool get isLoadingMovie => throw _privateConstructorUsedError;
  bool get isErrorMovie => throw _privateConstructorUsedError;
  List<GetLatestResponse> get latestMovies =>
      throw _privateConstructorUsedError;
  bool get isDetailTriggered => throw _privateConstructorUsedError;
  List<GetLatestTvResponse> get latestTV => throw _privateConstructorUsedError;
  bool get isLoadingTV => throw _privateConstructorUsedError;
  bool get isErrorTV => throw _privateConstructorUsedError;

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
      bool isLoadingMovie,
      bool isErrorMovie,
      List<GetLatestResponse> latestMovies,
      bool isDetailTriggered,
      List<GetLatestTvResponse> latestTV,
      bool isLoadingTV,
      bool isErrorTV});
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
    Object? isLoadingMovie = null,
    Object? isErrorMovie = null,
    Object? latestMovies = null,
    Object? isDetailTriggered = null,
    Object? latestTV = null,
    Object? isLoadingTV = null,
    Object? isErrorTV = null,
  }) {
    return _then(_value.copyWith(
      selectedTab: null == selectedTab
          ? _value.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as int,
      isLoadingMovie: null == isLoadingMovie
          ? _value.isLoadingMovie
          : isLoadingMovie // ignore: cast_nullable_to_non_nullable
              as bool,
      isErrorMovie: null == isErrorMovie
          ? _value.isErrorMovie
          : isErrorMovie // ignore: cast_nullable_to_non_nullable
              as bool,
      latestMovies: null == latestMovies
          ? _value.latestMovies
          : latestMovies // ignore: cast_nullable_to_non_nullable
              as List<GetLatestResponse>,
      isDetailTriggered: null == isDetailTriggered
          ? _value.isDetailTriggered
          : isDetailTriggered // ignore: cast_nullable_to_non_nullable
              as bool,
      latestTV: null == latestTV
          ? _value.latestTV
          : latestTV // ignore: cast_nullable_to_non_nullable
              as List<GetLatestTvResponse>,
      isLoadingTV: null == isLoadingTV
          ? _value.isLoadingTV
          : isLoadingTV // ignore: cast_nullable_to_non_nullable
              as bool,
      isErrorTV: null == isErrorTV
          ? _value.isErrorTV
          : isErrorTV // ignore: cast_nullable_to_non_nullable
              as bool,
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
      bool isLoadingMovie,
      bool isErrorMovie,
      List<GetLatestResponse> latestMovies,
      bool isDetailTriggered,
      List<GetLatestTvResponse> latestTV,
      bool isLoadingTV,
      bool isErrorTV});
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
    Object? isLoadingMovie = null,
    Object? isErrorMovie = null,
    Object? latestMovies = null,
    Object? isDetailTriggered = null,
    Object? latestTV = null,
    Object? isLoadingTV = null,
    Object? isErrorTV = null,
  }) {
    return _then(_$ExploreStateImpl(
      selectedTab: null == selectedTab
          ? _value.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as int,
      isLoadingMovie: null == isLoadingMovie
          ? _value.isLoadingMovie
          : isLoadingMovie // ignore: cast_nullable_to_non_nullable
              as bool,
      isErrorMovie: null == isErrorMovie
          ? _value.isErrorMovie
          : isErrorMovie // ignore: cast_nullable_to_non_nullable
              as bool,
      latestMovies: null == latestMovies
          ? _value._latestMovies
          : latestMovies // ignore: cast_nullable_to_non_nullable
              as List<GetLatestResponse>,
      isDetailTriggered: null == isDetailTriggered
          ? _value.isDetailTriggered
          : isDetailTriggered // ignore: cast_nullable_to_non_nullable
              as bool,
      latestTV: null == latestTV
          ? _value._latestTV
          : latestTV // ignore: cast_nullable_to_non_nullable
              as List<GetLatestTvResponse>,
      isLoadingTV: null == isLoadingTV
          ? _value.isLoadingTV
          : isLoadingTV // ignore: cast_nullable_to_non_nullable
              as bool,
      isErrorTV: null == isErrorTV
          ? _value.isErrorTV
          : isErrorTV // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ExploreStateImpl implements _ExploreState {
  const _$ExploreStateImpl(
      {required this.selectedTab,
      required this.isLoadingMovie,
      required this.isErrorMovie,
      required final List<GetLatestResponse> latestMovies,
      required this.isDetailTriggered,
      required final List<GetLatestTvResponse> latestTV,
      required this.isLoadingTV,
      required this.isErrorTV})
      : _latestMovies = latestMovies,
        _latestTV = latestTV;

  @override
  final int selectedTab;
  @override
  final bool isLoadingMovie;
  @override
  final bool isErrorMovie;
  final List<GetLatestResponse> _latestMovies;
  @override
  List<GetLatestResponse> get latestMovies {
    if (_latestMovies is EqualUnmodifiableListView) return _latestMovies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_latestMovies);
  }

  @override
  final bool isDetailTriggered;
  final List<GetLatestTvResponse> _latestTV;
  @override
  List<GetLatestTvResponse> get latestTV {
    if (_latestTV is EqualUnmodifiableListView) return _latestTV;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_latestTV);
  }

  @override
  final bool isLoadingTV;
  @override
  final bool isErrorTV;

  @override
  String toString() {
    return 'ExploreState(selectedTab: $selectedTab, isLoadingMovie: $isLoadingMovie, isErrorMovie: $isErrorMovie, latestMovies: $latestMovies, isDetailTriggered: $isDetailTriggered, latestTV: $latestTV, isLoadingTV: $isLoadingTV, isErrorTV: $isErrorTV)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExploreStateImpl &&
            (identical(other.selectedTab, selectedTab) ||
                other.selectedTab == selectedTab) &&
            (identical(other.isLoadingMovie, isLoadingMovie) ||
                other.isLoadingMovie == isLoadingMovie) &&
            (identical(other.isErrorMovie, isErrorMovie) ||
                other.isErrorMovie == isErrorMovie) &&
            const DeepCollectionEquality()
                .equals(other._latestMovies, _latestMovies) &&
            (identical(other.isDetailTriggered, isDetailTriggered) ||
                other.isDetailTriggered == isDetailTriggered) &&
            const DeepCollectionEquality().equals(other._latestTV, _latestTV) &&
            (identical(other.isLoadingTV, isLoadingTV) ||
                other.isLoadingTV == isLoadingTV) &&
            (identical(other.isErrorTV, isErrorTV) ||
                other.isErrorTV == isErrorTV));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      selectedTab,
      isLoadingMovie,
      isErrorMovie,
      const DeepCollectionEquality().hash(_latestMovies),
      isDetailTriggered,
      const DeepCollectionEquality().hash(_latestTV),
      isLoadingTV,
      isErrorTV);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExploreStateImplCopyWith<_$ExploreStateImpl> get copyWith =>
      __$$ExploreStateImplCopyWithImpl<_$ExploreStateImpl>(this, _$identity);
}

abstract class _ExploreState implements ExploreState {
  const factory _ExploreState(
      {required final int selectedTab,
      required final bool isLoadingMovie,
      required final bool isErrorMovie,
      required final List<GetLatestResponse> latestMovies,
      required final bool isDetailTriggered,
      required final List<GetLatestTvResponse> latestTV,
      required final bool isLoadingTV,
      required final bool isErrorTV}) = _$ExploreStateImpl;

  @override
  int get selectedTab;
  @override
  bool get isLoadingMovie;
  @override
  bool get isErrorMovie;
  @override
  List<GetLatestResponse> get latestMovies;
  @override
  bool get isDetailTriggered;
  @override
  List<GetLatestTvResponse> get latestTV;
  @override
  bool get isLoadingTV;
  @override
  bool get isErrorTV;
  @override
  @JsonKey(ignore: true)
  _$$ExploreStateImplCopyWith<_$ExploreStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
