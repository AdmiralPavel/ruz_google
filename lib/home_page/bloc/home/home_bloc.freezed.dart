// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeEventTearOff {
  const _$HomeEventTearOff();

  _InitialHomeEvent initial() {
    return const _InitialHomeEvent();
  }

  _LoadHomeEvent load(
      {required String email,
      required AuthClient client,
      required DateTime start,
      required DateTime end}) {
    return _LoadHomeEvent(
      email: email,
      client: client,
      start: start,
      end: end,
    );
  }

  _GetCredentialsHomeEvent getCredentials() {
    return const _GetCredentialsHomeEvent();
  }
}

/// @nodoc
const $HomeEvent = _$HomeEventTearOff();

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            String email, AuthClient client, DateTime start, DateTime end)
        load,
    required TResult Function() getCredentials,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            String email, AuthClient client, DateTime start, DateTime end)?
        load,
    TResult Function()? getCredentials,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialHomeEvent value) initial,
    required TResult Function(_LoadHomeEvent value) load,
    required TResult Function(_GetCredentialsHomeEvent value) getCredentials,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialHomeEvent value)? initial,
    TResult Function(_LoadHomeEvent value)? load,
    TResult Function(_GetCredentialsHomeEvent value)? getCredentials,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;
}

/// @nodoc
abstract class _$InitialHomeEventCopyWith<$Res> {
  factory _$InitialHomeEventCopyWith(
          _InitialHomeEvent value, $Res Function(_InitialHomeEvent) then) =
      __$InitialHomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialHomeEventCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements _$InitialHomeEventCopyWith<$Res> {
  __$InitialHomeEventCopyWithImpl(
      _InitialHomeEvent _value, $Res Function(_InitialHomeEvent) _then)
      : super(_value, (v) => _then(v as _InitialHomeEvent));

  @override
  _InitialHomeEvent get _value => super._value as _InitialHomeEvent;
}

/// @nodoc

class _$_InitialHomeEvent implements _InitialHomeEvent {
  const _$_InitialHomeEvent();

  @override
  String toString() {
    return 'HomeEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialHomeEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            String email, AuthClient client, DateTime start, DateTime end)
        load,
    required TResult Function() getCredentials,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            String email, AuthClient client, DateTime start, DateTime end)?
        load,
    TResult Function()? getCredentials,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialHomeEvent value) initial,
    required TResult Function(_LoadHomeEvent value) load,
    required TResult Function(_GetCredentialsHomeEvent value) getCredentials,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialHomeEvent value)? initial,
    TResult Function(_LoadHomeEvent value)? load,
    TResult Function(_GetCredentialsHomeEvent value)? getCredentials,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialHomeEvent implements HomeEvent {
  const factory _InitialHomeEvent() = _$_InitialHomeEvent;
}

/// @nodoc
abstract class _$LoadHomeEventCopyWith<$Res> {
  factory _$LoadHomeEventCopyWith(
          _LoadHomeEvent value, $Res Function(_LoadHomeEvent) then) =
      __$LoadHomeEventCopyWithImpl<$Res>;
  $Res call({String email, AuthClient client, DateTime start, DateTime end});
}

/// @nodoc
class __$LoadHomeEventCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$LoadHomeEventCopyWith<$Res> {
  __$LoadHomeEventCopyWithImpl(
      _LoadHomeEvent _value, $Res Function(_LoadHomeEvent) _then)
      : super(_value, (v) => _then(v as _LoadHomeEvent));

  @override
  _LoadHomeEvent get _value => super._value as _LoadHomeEvent;

  @override
  $Res call({
    Object? email = freezed,
    Object? client = freezed,
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_LoadHomeEvent(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      client: client == freezed
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as AuthClient,
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_LoadHomeEvent implements _LoadHomeEvent {
  const _$_LoadHomeEvent(
      {required this.email,
      required this.client,
      required this.start,
      required this.end});

  @override
  final String email;
  @override
  final AuthClient client;
  @override
  final DateTime start;
  @override
  final DateTime end;

  @override
  String toString() {
    return 'HomeEvent.load(email: $email, client: $client, start: $start, end: $end)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadHomeEvent &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.client, client) ||
                const DeepCollectionEquality().equals(other.client, client)) &&
            (identical(other.start, start) ||
                const DeepCollectionEquality().equals(other.start, start)) &&
            (identical(other.end, end) ||
                const DeepCollectionEquality().equals(other.end, end)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(client) ^
      const DeepCollectionEquality().hash(start) ^
      const DeepCollectionEquality().hash(end);

  @JsonKey(ignore: true)
  @override
  _$LoadHomeEventCopyWith<_LoadHomeEvent> get copyWith =>
      __$LoadHomeEventCopyWithImpl<_LoadHomeEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            String email, AuthClient client, DateTime start, DateTime end)
        load,
    required TResult Function() getCredentials,
  }) {
    return load(email, client, start, end);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            String email, AuthClient client, DateTime start, DateTime end)?
        load,
    TResult Function()? getCredentials,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(email, client, start, end);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialHomeEvent value) initial,
    required TResult Function(_LoadHomeEvent value) load,
    required TResult Function(_GetCredentialsHomeEvent value) getCredentials,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialHomeEvent value)? initial,
    TResult Function(_LoadHomeEvent value)? load,
    TResult Function(_GetCredentialsHomeEvent value)? getCredentials,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _LoadHomeEvent implements HomeEvent {
  const factory _LoadHomeEvent(
      {required String email,
      required AuthClient client,
      required DateTime start,
      required DateTime end}) = _$_LoadHomeEvent;

  String get email => throw _privateConstructorUsedError;
  AuthClient get client => throw _privateConstructorUsedError;
  DateTime get start => throw _privateConstructorUsedError;
  DateTime get end => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadHomeEventCopyWith<_LoadHomeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetCredentialsHomeEventCopyWith<$Res> {
  factory _$GetCredentialsHomeEventCopyWith(_GetCredentialsHomeEvent value,
          $Res Function(_GetCredentialsHomeEvent) then) =
      __$GetCredentialsHomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetCredentialsHomeEventCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements _$GetCredentialsHomeEventCopyWith<$Res> {
  __$GetCredentialsHomeEventCopyWithImpl(_GetCredentialsHomeEvent _value,
      $Res Function(_GetCredentialsHomeEvent) _then)
      : super(_value, (v) => _then(v as _GetCredentialsHomeEvent));

  @override
  _GetCredentialsHomeEvent get _value =>
      super._value as _GetCredentialsHomeEvent;
}

/// @nodoc

class _$_GetCredentialsHomeEvent implements _GetCredentialsHomeEvent {
  const _$_GetCredentialsHomeEvent();

  @override
  String toString() {
    return 'HomeEvent.getCredentials()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetCredentialsHomeEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            String email, AuthClient client, DateTime start, DateTime end)
        load,
    required TResult Function() getCredentials,
  }) {
    return getCredentials();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            String email, AuthClient client, DateTime start, DateTime end)?
        load,
    TResult Function()? getCredentials,
    required TResult orElse(),
  }) {
    if (getCredentials != null) {
      return getCredentials();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialHomeEvent value) initial,
    required TResult Function(_LoadHomeEvent value) load,
    required TResult Function(_GetCredentialsHomeEvent value) getCredentials,
  }) {
    return getCredentials(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialHomeEvent value)? initial,
    TResult Function(_LoadHomeEvent value)? load,
    TResult Function(_GetCredentialsHomeEvent value)? getCredentials,
    required TResult orElse(),
  }) {
    if (getCredentials != null) {
      return getCredentials(this);
    }
    return orElse();
  }
}

abstract class _GetCredentialsHomeEvent implements HomeEvent {
  const factory _GetCredentialsHomeEvent() = _$_GetCredentialsHomeEvent;
}

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  _DataHomeState data({required int count, required int totalCount}) {
    return _DataHomeState(
      count: count,
      totalCount: totalCount,
    );
  }

  _InitialHomeState initial() {
    return const _InitialHomeState();
  }

  _LoadingHomeState loading({required double percent}) {
    return _LoadingHomeState(
      percent: percent,
    );
  }

  _CredentialsHomeState credentials({AuthClient? client}) {
    return _CredentialsHomeState(
      client: client,
    );
  }

  _ErrorHomeState error() {
    return const _ErrorHomeState();
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int count, int totalCount) data,
    required TResult Function() initial,
    required TResult Function(double percent) loading,
    required TResult Function(AuthClient? client) credentials,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int count, int totalCount)? data,
    TResult Function()? initial,
    TResult Function(double percent)? loading,
    TResult Function(AuthClient? client)? credentials,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataHomeState value) data,
    required TResult Function(_InitialHomeState value) initial,
    required TResult Function(_LoadingHomeState value) loading,
    required TResult Function(_CredentialsHomeState value) credentials,
    required TResult Function(_ErrorHomeState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataHomeState value)? data,
    TResult Function(_InitialHomeState value)? initial,
    TResult Function(_LoadingHomeState value)? loading,
    TResult Function(_CredentialsHomeState value)? credentials,
    TResult Function(_ErrorHomeState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;
}

/// @nodoc
abstract class _$DataHomeStateCopyWith<$Res> {
  factory _$DataHomeStateCopyWith(
          _DataHomeState value, $Res Function(_DataHomeState) then) =
      __$DataHomeStateCopyWithImpl<$Res>;
  $Res call({int count, int totalCount});
}

/// @nodoc
class __$DataHomeStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$DataHomeStateCopyWith<$Res> {
  __$DataHomeStateCopyWithImpl(
      _DataHomeState _value, $Res Function(_DataHomeState) _then)
      : super(_value, (v) => _then(v as _DataHomeState));

  @override
  _DataHomeState get _value => super._value as _DataHomeState;

  @override
  $Res call({
    Object? count = freezed,
    Object? totalCount = freezed,
  }) {
    return _then(_DataHomeState(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      totalCount: totalCount == freezed
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DataHomeState implements _DataHomeState {
  const _$_DataHomeState({required this.count, required this.totalCount});

  @override
  final int count;
  @override
  final int totalCount;

  @override
  String toString() {
    return 'HomeState.data(count: $count, totalCount: $totalCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DataHomeState &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(totalCount);

  @JsonKey(ignore: true)
  @override
  _$DataHomeStateCopyWith<_DataHomeState> get copyWith =>
      __$DataHomeStateCopyWithImpl<_DataHomeState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int count, int totalCount) data,
    required TResult Function() initial,
    required TResult Function(double percent) loading,
    required TResult Function(AuthClient? client) credentials,
    required TResult Function() error,
  }) {
    return data(count, totalCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int count, int totalCount)? data,
    TResult Function()? initial,
    TResult Function(double percent)? loading,
    TResult Function(AuthClient? client)? credentials,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(count, totalCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataHomeState value) data,
    required TResult Function(_InitialHomeState value) initial,
    required TResult Function(_LoadingHomeState value) loading,
    required TResult Function(_CredentialsHomeState value) credentials,
    required TResult Function(_ErrorHomeState value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataHomeState value)? data,
    TResult Function(_InitialHomeState value)? initial,
    TResult Function(_LoadingHomeState value)? loading,
    TResult Function(_CredentialsHomeState value)? credentials,
    TResult Function(_ErrorHomeState value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _DataHomeState implements HomeState {
  const factory _DataHomeState({required int count, required int totalCount}) =
      _$_DataHomeState;

  int get count => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DataHomeStateCopyWith<_DataHomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InitialHomeStateCopyWith<$Res> {
  factory _$InitialHomeStateCopyWith(
          _InitialHomeState value, $Res Function(_InitialHomeState) then) =
      __$InitialHomeStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialHomeStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$InitialHomeStateCopyWith<$Res> {
  __$InitialHomeStateCopyWithImpl(
      _InitialHomeState _value, $Res Function(_InitialHomeState) _then)
      : super(_value, (v) => _then(v as _InitialHomeState));

  @override
  _InitialHomeState get _value => super._value as _InitialHomeState;
}

/// @nodoc

class _$_InitialHomeState implements _InitialHomeState {
  const _$_InitialHomeState();

  @override
  String toString() {
    return 'HomeState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialHomeState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int count, int totalCount) data,
    required TResult Function() initial,
    required TResult Function(double percent) loading,
    required TResult Function(AuthClient? client) credentials,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int count, int totalCount)? data,
    TResult Function()? initial,
    TResult Function(double percent)? loading,
    TResult Function(AuthClient? client)? credentials,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataHomeState value) data,
    required TResult Function(_InitialHomeState value) initial,
    required TResult Function(_LoadingHomeState value) loading,
    required TResult Function(_CredentialsHomeState value) credentials,
    required TResult Function(_ErrorHomeState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataHomeState value)? data,
    TResult Function(_InitialHomeState value)? initial,
    TResult Function(_LoadingHomeState value)? loading,
    TResult Function(_CredentialsHomeState value)? credentials,
    TResult Function(_ErrorHomeState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialHomeState implements HomeState {
  const factory _InitialHomeState() = _$_InitialHomeState;
}

/// @nodoc
abstract class _$LoadingHomeStateCopyWith<$Res> {
  factory _$LoadingHomeStateCopyWith(
          _LoadingHomeState value, $Res Function(_LoadingHomeState) then) =
      __$LoadingHomeStateCopyWithImpl<$Res>;
  $Res call({double percent});
}

/// @nodoc
class __$LoadingHomeStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$LoadingHomeStateCopyWith<$Res> {
  __$LoadingHomeStateCopyWithImpl(
      _LoadingHomeState _value, $Res Function(_LoadingHomeState) _then)
      : super(_value, (v) => _then(v as _LoadingHomeState));

  @override
  _LoadingHomeState get _value => super._value as _LoadingHomeState;

  @override
  $Res call({
    Object? percent = freezed,
  }) {
    return _then(_LoadingHomeState(
      percent: percent == freezed
          ? _value.percent
          : percent // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_LoadingHomeState implements _LoadingHomeState {
  const _$_LoadingHomeState({required this.percent});

  @override
  final double percent;

  @override
  String toString() {
    return 'HomeState.loading(percent: $percent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadingHomeState &&
            (identical(other.percent, percent) ||
                const DeepCollectionEquality().equals(other.percent, percent)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(percent);

  @JsonKey(ignore: true)
  @override
  _$LoadingHomeStateCopyWith<_LoadingHomeState> get copyWith =>
      __$LoadingHomeStateCopyWithImpl<_LoadingHomeState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int count, int totalCount) data,
    required TResult Function() initial,
    required TResult Function(double percent) loading,
    required TResult Function(AuthClient? client) credentials,
    required TResult Function() error,
  }) {
    return loading(percent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int count, int totalCount)? data,
    TResult Function()? initial,
    TResult Function(double percent)? loading,
    TResult Function(AuthClient? client)? credentials,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(percent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataHomeState value) data,
    required TResult Function(_InitialHomeState value) initial,
    required TResult Function(_LoadingHomeState value) loading,
    required TResult Function(_CredentialsHomeState value) credentials,
    required TResult Function(_ErrorHomeState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataHomeState value)? data,
    TResult Function(_InitialHomeState value)? initial,
    TResult Function(_LoadingHomeState value)? loading,
    TResult Function(_CredentialsHomeState value)? credentials,
    TResult Function(_ErrorHomeState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingHomeState implements HomeState {
  const factory _LoadingHomeState({required double percent}) =
      _$_LoadingHomeState;

  double get percent => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadingHomeStateCopyWith<_LoadingHomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CredentialsHomeStateCopyWith<$Res> {
  factory _$CredentialsHomeStateCopyWith(_CredentialsHomeState value,
          $Res Function(_CredentialsHomeState) then) =
      __$CredentialsHomeStateCopyWithImpl<$Res>;
  $Res call({AuthClient? client});
}

/// @nodoc
class __$CredentialsHomeStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$CredentialsHomeStateCopyWith<$Res> {
  __$CredentialsHomeStateCopyWithImpl(
      _CredentialsHomeState _value, $Res Function(_CredentialsHomeState) _then)
      : super(_value, (v) => _then(v as _CredentialsHomeState));

  @override
  _CredentialsHomeState get _value => super._value as _CredentialsHomeState;

  @override
  $Res call({
    Object? client = freezed,
  }) {
    return _then(_CredentialsHomeState(
      client: client == freezed
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as AuthClient?,
    ));
  }
}

/// @nodoc

class _$_CredentialsHomeState implements _CredentialsHomeState {
  const _$_CredentialsHomeState({this.client});

  @override
  final AuthClient? client;

  @override
  String toString() {
    return 'HomeState.credentials(client: $client)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CredentialsHomeState &&
            (identical(other.client, client) ||
                const DeepCollectionEquality().equals(other.client, client)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(client);

  @JsonKey(ignore: true)
  @override
  _$CredentialsHomeStateCopyWith<_CredentialsHomeState> get copyWith =>
      __$CredentialsHomeStateCopyWithImpl<_CredentialsHomeState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int count, int totalCount) data,
    required TResult Function() initial,
    required TResult Function(double percent) loading,
    required TResult Function(AuthClient? client) credentials,
    required TResult Function() error,
  }) {
    return credentials(client);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int count, int totalCount)? data,
    TResult Function()? initial,
    TResult Function(double percent)? loading,
    TResult Function(AuthClient? client)? credentials,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (credentials != null) {
      return credentials(client);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataHomeState value) data,
    required TResult Function(_InitialHomeState value) initial,
    required TResult Function(_LoadingHomeState value) loading,
    required TResult Function(_CredentialsHomeState value) credentials,
    required TResult Function(_ErrorHomeState value) error,
  }) {
    return credentials(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataHomeState value)? data,
    TResult Function(_InitialHomeState value)? initial,
    TResult Function(_LoadingHomeState value)? loading,
    TResult Function(_CredentialsHomeState value)? credentials,
    TResult Function(_ErrorHomeState value)? error,
    required TResult orElse(),
  }) {
    if (credentials != null) {
      return credentials(this);
    }
    return orElse();
  }
}

abstract class _CredentialsHomeState implements HomeState {
  const factory _CredentialsHomeState({AuthClient? client}) =
      _$_CredentialsHomeState;

  AuthClient? get client => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CredentialsHomeStateCopyWith<_CredentialsHomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorHomeStateCopyWith<$Res> {
  factory _$ErrorHomeStateCopyWith(
          _ErrorHomeState value, $Res Function(_ErrorHomeState) then) =
      __$ErrorHomeStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$ErrorHomeStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$ErrorHomeStateCopyWith<$Res> {
  __$ErrorHomeStateCopyWithImpl(
      _ErrorHomeState _value, $Res Function(_ErrorHomeState) _then)
      : super(_value, (v) => _then(v as _ErrorHomeState));

  @override
  _ErrorHomeState get _value => super._value as _ErrorHomeState;
}

/// @nodoc

class _$_ErrorHomeState implements _ErrorHomeState {
  const _$_ErrorHomeState();

  @override
  String toString() {
    return 'HomeState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ErrorHomeState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int count, int totalCount) data,
    required TResult Function() initial,
    required TResult Function(double percent) loading,
    required TResult Function(AuthClient? client) credentials,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int count, int totalCount)? data,
    TResult Function()? initial,
    TResult Function(double percent)? loading,
    TResult Function(AuthClient? client)? credentials,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataHomeState value) data,
    required TResult Function(_InitialHomeState value) initial,
    required TResult Function(_LoadingHomeState value) loading,
    required TResult Function(_CredentialsHomeState value) credentials,
    required TResult Function(_ErrorHomeState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataHomeState value)? data,
    TResult Function(_InitialHomeState value)? initial,
    TResult Function(_LoadingHomeState value)? loading,
    TResult Function(_CredentialsHomeState value)? credentials,
    TResult Function(_ErrorHomeState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorHomeState implements HomeState {
  const factory _ErrorHomeState() = _$_ErrorHomeState;
}
