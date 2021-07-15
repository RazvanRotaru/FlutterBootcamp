// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of actions;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GetCurrentWeatherActionTearOff {
  const _$GetCurrentWeatherActionTearOff();

  GetCurrentWeatherActionStart call() {
    return const GetCurrentWeatherActionStart();
  }

  GetCurrentWeatherActionSuccessful successful({required CurrentWeather weather}) {
    return GetCurrentWeatherActionSuccessful(
      weather: weather,
    );
  }

  GetCurrentWeatherActionError error({required Object error, required StackTrace stackTrace}) {
    return GetCurrentWeatherActionError(
      error: error,
      stackTrace: stackTrace,
    );
  }
}

/// @nodoc
const $GetCurrentWeatherAction = _$GetCurrentWeatherActionTearOff();

/// @nodoc
mixin _$GetCurrentWeatherAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(CurrentWeather weather) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(CurrentWeather weather)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetCurrentWeatherActionStart value) $default, {
    required TResult Function(GetCurrentWeatherActionSuccessful value) successful,
    required TResult Function(GetCurrentWeatherActionError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetCurrentWeatherActionStart value)? $default, {
    TResult Function(GetCurrentWeatherActionSuccessful value)? successful,
    TResult Function(GetCurrentWeatherActionError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCurrentWeatherActionCopyWith<$Res> {
  factory $GetCurrentWeatherActionCopyWith(GetCurrentWeatherAction value, $Res Function(GetCurrentWeatherAction) then) =
      _$GetCurrentWeatherActionCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetCurrentWeatherActionCopyWithImpl<$Res> implements $GetCurrentWeatherActionCopyWith<$Res> {
  _$GetCurrentWeatherActionCopyWithImpl(this._value, this._then);

  final GetCurrentWeatherAction _value;
  // ignore: unused_field
  final $Res Function(GetCurrentWeatherAction) _then;
}

/// @nodoc
abstract class $GetCurrentWeatherActionStartCopyWith<$Res> {
  factory $GetCurrentWeatherActionStartCopyWith(
          GetCurrentWeatherActionStart value, $Res Function(GetCurrentWeatherActionStart) then) =
      _$GetCurrentWeatherActionStartCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetCurrentWeatherActionStartCopyWithImpl<$Res> extends _$GetCurrentWeatherActionCopyWithImpl<$Res>
    implements $GetCurrentWeatherActionStartCopyWith<$Res> {
  _$GetCurrentWeatherActionStartCopyWithImpl(
      GetCurrentWeatherActionStart _value, $Res Function(GetCurrentWeatherActionStart) _then)
      : super(_value, (v) => _then(v as GetCurrentWeatherActionStart));

  @override
  GetCurrentWeatherActionStart get _value => super._value as GetCurrentWeatherActionStart;
}

/// @nodoc

class _$GetCurrentWeatherActionStart implements GetCurrentWeatherActionStart {
  const _$GetCurrentWeatherActionStart();

  @override
  String toString() {
    return 'GetCurrentWeatherAction()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetCurrentWeatherActionStart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(CurrentWeather weather) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(CurrentWeather weather)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetCurrentWeatherActionStart value) $default, {
    required TResult Function(GetCurrentWeatherActionSuccessful value) successful,
    required TResult Function(GetCurrentWeatherActionError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetCurrentWeatherActionStart value)? $default, {
    TResult Function(GetCurrentWeatherActionSuccessful value)? successful,
    TResult Function(GetCurrentWeatherActionError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetCurrentWeatherActionStart implements GetCurrentWeatherAction {
  const factory GetCurrentWeatherActionStart() = _$GetCurrentWeatherActionStart;
}

/// @nodoc
abstract class $GetCurrentWeatherActionSuccessfulCopyWith<$Res> {
  factory $GetCurrentWeatherActionSuccessfulCopyWith(
          GetCurrentWeatherActionSuccessful value, $Res Function(GetCurrentWeatherActionSuccessful) then) =
      _$GetCurrentWeatherActionSuccessfulCopyWithImpl<$Res>;
  $Res call({CurrentWeather weather});
}

/// @nodoc
class _$GetCurrentWeatherActionSuccessfulCopyWithImpl<$Res> extends _$GetCurrentWeatherActionCopyWithImpl<$Res>
    implements $GetCurrentWeatherActionSuccessfulCopyWith<$Res> {
  _$GetCurrentWeatherActionSuccessfulCopyWithImpl(
      GetCurrentWeatherActionSuccessful _value, $Res Function(GetCurrentWeatherActionSuccessful) _then)
      : super(_value, (v) => _then(v as GetCurrentWeatherActionSuccessful));

  @override
  GetCurrentWeatherActionSuccessful get _value => super._value as GetCurrentWeatherActionSuccessful;

  @override
  $Res call({
    Object? weather = freezed,
  }) {
    return _then(GetCurrentWeatherActionSuccessful(
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as CurrentWeather,
    ));
  }
}

/// @nodoc

class _$GetCurrentWeatherActionSuccessful implements GetCurrentWeatherActionSuccessful {
  const _$GetCurrentWeatherActionSuccessful({required this.weather});

  @override
  final CurrentWeather weather;

  @override
  String toString() {
    return 'GetCurrentWeatherAction.successful(weather: $weather)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetCurrentWeatherActionSuccessful &&
            (identical(other.weather, weather) || const DeepCollectionEquality().equals(other.weather, weather)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(weather);

  @JsonKey(ignore: true)
  @override
  $GetCurrentWeatherActionSuccessfulCopyWith<GetCurrentWeatherActionSuccessful> get copyWith =>
      _$GetCurrentWeatherActionSuccessfulCopyWithImpl<GetCurrentWeatherActionSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(CurrentWeather weather) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(weather);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(CurrentWeather weather)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(weather);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetCurrentWeatherActionStart value) $default, {
    required TResult Function(GetCurrentWeatherActionSuccessful value) successful,
    required TResult Function(GetCurrentWeatherActionError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetCurrentWeatherActionStart value)? $default, {
    TResult Function(GetCurrentWeatherActionSuccessful value)? successful,
    TResult Function(GetCurrentWeatherActionError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetCurrentWeatherActionSuccessful implements GetCurrentWeatherAction {
  const factory GetCurrentWeatherActionSuccessful({required CurrentWeather weather}) =
      _$GetCurrentWeatherActionSuccessful;

  CurrentWeather get weather => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetCurrentWeatherActionSuccessfulCopyWith<GetCurrentWeatherActionSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCurrentWeatherActionErrorCopyWith<$Res> {
  factory $GetCurrentWeatherActionErrorCopyWith(
          GetCurrentWeatherActionError value, $Res Function(GetCurrentWeatherActionError) then) =
      _$GetCurrentWeatherActionErrorCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class _$GetCurrentWeatherActionErrorCopyWithImpl<$Res> extends _$GetCurrentWeatherActionCopyWithImpl<$Res>
    implements $GetCurrentWeatherActionErrorCopyWith<$Res> {
  _$GetCurrentWeatherActionErrorCopyWithImpl(
      GetCurrentWeatherActionError _value, $Res Function(GetCurrentWeatherActionError) _then)
      : super(_value, (v) => _then(v as GetCurrentWeatherActionError));

  @override
  GetCurrentWeatherActionError get _value => super._value as GetCurrentWeatherActionError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(GetCurrentWeatherActionError(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace: stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

@Implements(ErrorAction)
class _$GetCurrentWeatherActionError implements GetCurrentWeatherActionError {
  const _$GetCurrentWeatherActionError({required this.error, required this.stackTrace});

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'GetCurrentWeatherAction.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetCurrentWeatherActionError &&
            (identical(other.error, error) || const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.stackTrace, stackTrace) ||
                const DeepCollectionEquality().equals(other.stackTrace, stackTrace)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(stackTrace);

  @JsonKey(ignore: true)
  @override
  $GetCurrentWeatherActionErrorCopyWith<GetCurrentWeatherActionError> get copyWith =>
      _$GetCurrentWeatherActionErrorCopyWithImpl<GetCurrentWeatherActionError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(CurrentWeather weather) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(CurrentWeather weather)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetCurrentWeatherActionStart value) $default, {
    required TResult Function(GetCurrentWeatherActionSuccessful value) successful,
    required TResult Function(GetCurrentWeatherActionError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetCurrentWeatherActionStart value)? $default, {
    TResult Function(GetCurrentWeatherActionSuccessful value)? successful,
    TResult Function(GetCurrentWeatherActionError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetCurrentWeatherActionError implements GetCurrentWeatherAction, ErrorAction {
  const factory GetCurrentWeatherActionError({required Object error, required StackTrace stackTrace}) =
      _$GetCurrentWeatherActionError;

  Object get error => throw _privateConstructorUsedError;
  StackTrace get stackTrace => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetCurrentWeatherActionErrorCopyWith<GetCurrentWeatherActionError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GetLocationActionTearOff {
  const _$GetLocationActionTearOff();

  GetLocationActionStart call() {
    return const GetLocationActionStart();
  }

  GetLocationActionSuccessful successful({required Location location}) {
    return GetLocationActionSuccessful(
      location: location,
    );
  }

  GetLocationActionError error({required Object error, required StackTrace stackTrace}) {
    return GetLocationActionError(
      error: error,
      stackTrace: stackTrace,
    );
  }
}

/// @nodoc
const $GetLocationAction = _$GetLocationActionTearOff();

/// @nodoc
mixin _$GetLocationAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(Location location) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(Location location)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetLocationActionStart value) $default, {
    required TResult Function(GetLocationActionSuccessful value) successful,
    required TResult Function(GetLocationActionError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetLocationActionStart value)? $default, {
    TResult Function(GetLocationActionSuccessful value)? successful,
    TResult Function(GetLocationActionError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetLocationActionCopyWith<$Res> {
  factory $GetLocationActionCopyWith(GetLocationAction value, $Res Function(GetLocationAction) then) =
      _$GetLocationActionCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetLocationActionCopyWithImpl<$Res> implements $GetLocationActionCopyWith<$Res> {
  _$GetLocationActionCopyWithImpl(this._value, this._then);

  final GetLocationAction _value;
  // ignore: unused_field
  final $Res Function(GetLocationAction) _then;
}

/// @nodoc
abstract class $GetLocationActionStartCopyWith<$Res> {
  factory $GetLocationActionStartCopyWith(GetLocationActionStart value, $Res Function(GetLocationActionStart) then) =
      _$GetLocationActionStartCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetLocationActionStartCopyWithImpl<$Res> extends _$GetLocationActionCopyWithImpl<$Res>
    implements $GetLocationActionStartCopyWith<$Res> {
  _$GetLocationActionStartCopyWithImpl(GetLocationActionStart _value, $Res Function(GetLocationActionStart) _then)
      : super(_value, (v) => _then(v as GetLocationActionStart));

  @override
  GetLocationActionStart get _value => super._value as GetLocationActionStart;
}

/// @nodoc

class _$GetLocationActionStart implements GetLocationActionStart {
  const _$GetLocationActionStart();

  @override
  String toString() {
    return 'GetLocationAction()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetLocationActionStart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(Location location) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(Location location)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetLocationActionStart value) $default, {
    required TResult Function(GetLocationActionSuccessful value) successful,
    required TResult Function(GetLocationActionError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetLocationActionStart value)? $default, {
    TResult Function(GetLocationActionSuccessful value)? successful,
    TResult Function(GetLocationActionError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetLocationActionStart implements GetLocationAction {
  const factory GetLocationActionStart() = _$GetLocationActionStart;
}

/// @nodoc
abstract class $GetLocationActionSuccessfulCopyWith<$Res> {
  factory $GetLocationActionSuccessfulCopyWith(
          GetLocationActionSuccessful value, $Res Function(GetLocationActionSuccessful) then) =
      _$GetLocationActionSuccessfulCopyWithImpl<$Res>;
  $Res call({Location location});
}

/// @nodoc
class _$GetLocationActionSuccessfulCopyWithImpl<$Res> extends _$GetLocationActionCopyWithImpl<$Res>
    implements $GetLocationActionSuccessfulCopyWith<$Res> {
  _$GetLocationActionSuccessfulCopyWithImpl(
      GetLocationActionSuccessful _value, $Res Function(GetLocationActionSuccessful) _then)
      : super(_value, (v) => _then(v as GetLocationActionSuccessful));

  @override
  GetLocationActionSuccessful get _value => super._value as GetLocationActionSuccessful;

  @override
  $Res call({
    Object? location = freezed,
  }) {
    return _then(GetLocationActionSuccessful(
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
    ));
  }
}

/// @nodoc

class _$GetLocationActionSuccessful implements GetLocationActionSuccessful {
  const _$GetLocationActionSuccessful({required this.location});

  @override
  final Location location;

  @override
  String toString() {
    return 'GetLocationAction.successful(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetLocationActionSuccessful &&
            (identical(other.location, location) || const DeepCollectionEquality().equals(other.location, location)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(location);

  @JsonKey(ignore: true)
  @override
  $GetLocationActionSuccessfulCopyWith<GetLocationActionSuccessful> get copyWith =>
      _$GetLocationActionSuccessfulCopyWithImpl<GetLocationActionSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(Location location) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(Location location)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetLocationActionStart value) $default, {
    required TResult Function(GetLocationActionSuccessful value) successful,
    required TResult Function(GetLocationActionError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetLocationActionStart value)? $default, {
    TResult Function(GetLocationActionSuccessful value)? successful,
    TResult Function(GetLocationActionError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetLocationActionSuccessful implements GetLocationAction {
  const factory GetLocationActionSuccessful({required Location location}) = _$GetLocationActionSuccessful;

  Location get location => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetLocationActionSuccessfulCopyWith<GetLocationActionSuccessful> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetLocationActionErrorCopyWith<$Res> {
  factory $GetLocationActionErrorCopyWith(GetLocationActionError value, $Res Function(GetLocationActionError) then) =
      _$GetLocationActionErrorCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class _$GetLocationActionErrorCopyWithImpl<$Res> extends _$GetLocationActionCopyWithImpl<$Res>
    implements $GetLocationActionErrorCopyWith<$Res> {
  _$GetLocationActionErrorCopyWithImpl(GetLocationActionError _value, $Res Function(GetLocationActionError) _then)
      : super(_value, (v) => _then(v as GetLocationActionError));

  @override
  GetLocationActionError get _value => super._value as GetLocationActionError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(GetLocationActionError(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace: stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

@Implements(ErrorAction)
class _$GetLocationActionError implements GetLocationActionError {
  const _$GetLocationActionError({required this.error, required this.stackTrace});

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'GetLocationAction.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetLocationActionError &&
            (identical(other.error, error) || const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.stackTrace, stackTrace) ||
                const DeepCollectionEquality().equals(other.stackTrace, stackTrace)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(stackTrace);

  @JsonKey(ignore: true)
  @override
  $GetLocationActionErrorCopyWith<GetLocationActionError> get copyWith =>
      _$GetLocationActionErrorCopyWithImpl<GetLocationActionError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(Location location) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(Location location)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetLocationActionStart value) $default, {
    required TResult Function(GetLocationActionSuccessful value) successful,
    required TResult Function(GetLocationActionError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetLocationActionStart value)? $default, {
    TResult Function(GetLocationActionSuccessful value)? successful,
    TResult Function(GetLocationActionError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetLocationActionError implements GetLocationAction, ErrorAction {
  const factory GetLocationActionError({required Object error, required StackTrace stackTrace}) =
      _$GetLocationActionError;

  Object get error => throw _privateConstructorUsedError;
  StackTrace get stackTrace => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetLocationActionErrorCopyWith<GetLocationActionError> get copyWith => throw _privateConstructorUsedError;
}
