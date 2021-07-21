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
class _$GetPhotosActionTearOff {
  const _$GetPhotosActionTearOff();

  GetPhotosActionStart call() {
    return const GetPhotosActionStart();
  }

  GetPhotosActionSuccessful successful({required List<Photo> photos}) {
    return GetPhotosActionSuccessful(
      photos: photos,
    );
  }

  GetPhotosActionError error({required Object error, required StackTrace stackTrace}) {
    return GetPhotosActionError(
      error: error,
      stackTrace: stackTrace,
    );
  }
}

/// @nodoc
const $GetPhotosAction = _$GetPhotosActionTearOff();

/// @nodoc
mixin _$GetPhotosAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<Photo> photos) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Photo> photos)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetPhotosActionStart value) $default, {
    required TResult Function(GetPhotosActionSuccessful value) successful,
    required TResult Function(GetPhotosActionError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetPhotosActionStart value)? $default, {
    TResult Function(GetPhotosActionSuccessful value)? successful,
    TResult Function(GetPhotosActionError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPhotosActionCopyWith<$Res> {
  factory $GetPhotosActionCopyWith(GetPhotosAction value, $Res Function(GetPhotosAction) then) =
      _$GetPhotosActionCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetPhotosActionCopyWithImpl<$Res> implements $GetPhotosActionCopyWith<$Res> {
  _$GetPhotosActionCopyWithImpl(this._value, this._then);

  final GetPhotosAction _value;
  // ignore: unused_field
  final $Res Function(GetPhotosAction) _then;
}

/// @nodoc
abstract class $GetPhotosActionStartCopyWith<$Res> {
  factory $GetPhotosActionStartCopyWith(GetPhotosActionStart value, $Res Function(GetPhotosActionStart) then) =
      _$GetPhotosActionStartCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetPhotosActionStartCopyWithImpl<$Res> extends _$GetPhotosActionCopyWithImpl<$Res>
    implements $GetPhotosActionStartCopyWith<$Res> {
  _$GetPhotosActionStartCopyWithImpl(GetPhotosActionStart _value, $Res Function(GetPhotosActionStart) _then)
      : super(_value, (v) => _then(v as GetPhotosActionStart));

  @override
  GetPhotosActionStart get _value => super._value as GetPhotosActionStart;
}

/// @nodoc

class _$GetPhotosActionStart implements GetPhotosActionStart {
  const _$GetPhotosActionStart();

  @override
  String toString() {
    return 'GetPhotosAction()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetPhotosActionStart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<Photo> photos) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Photo> photos)? successful,
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
    TResult Function(GetPhotosActionStart value) $default, {
    required TResult Function(GetPhotosActionSuccessful value) successful,
    required TResult Function(GetPhotosActionError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetPhotosActionStart value)? $default, {
    TResult Function(GetPhotosActionSuccessful value)? successful,
    TResult Function(GetPhotosActionError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetPhotosActionStart implements GetPhotosAction {
  const factory GetPhotosActionStart() = _$GetPhotosActionStart;
}

/// @nodoc
abstract class $GetPhotosActionSuccessfulCopyWith<$Res> {
  factory $GetPhotosActionSuccessfulCopyWith(
          GetPhotosActionSuccessful value, $Res Function(GetPhotosActionSuccessful) then) =
      _$GetPhotosActionSuccessfulCopyWithImpl<$Res>;
  $Res call({List<Photo> photos});
}

/// @nodoc
class _$GetPhotosActionSuccessfulCopyWithImpl<$Res> extends _$GetPhotosActionCopyWithImpl<$Res>
    implements $GetPhotosActionSuccessfulCopyWith<$Res> {
  _$GetPhotosActionSuccessfulCopyWithImpl(
      GetPhotosActionSuccessful _value, $Res Function(GetPhotosActionSuccessful) _then)
      : super(_value, (v) => _then(v as GetPhotosActionSuccessful));

  @override
  GetPhotosActionSuccessful get _value => super._value as GetPhotosActionSuccessful;

  @override
  $Res call({
    Object? photos = freezed,
  }) {
    return _then(GetPhotosActionSuccessful(
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>,
    ));
  }
}

/// @nodoc

class _$GetPhotosActionSuccessful implements GetPhotosActionSuccessful {
  const _$GetPhotosActionSuccessful({required this.photos});

  @override
  final List<Photo> photos;

  @override
  String toString() {
    return 'GetPhotosAction.successful(photos: $photos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetPhotosActionSuccessful &&
            (identical(other.photos, photos) || const DeepCollectionEquality().equals(other.photos, photos)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(photos);

  @JsonKey(ignore: true)
  @override
  $GetPhotosActionSuccessfulCopyWith<GetPhotosActionSuccessful> get copyWith =>
      _$GetPhotosActionSuccessfulCopyWithImpl<GetPhotosActionSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<Photo> photos) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(photos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Photo> photos)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(photos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetPhotosActionStart value) $default, {
    required TResult Function(GetPhotosActionSuccessful value) successful,
    required TResult Function(GetPhotosActionError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetPhotosActionStart value)? $default, {
    TResult Function(GetPhotosActionSuccessful value)? successful,
    TResult Function(GetPhotosActionError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetPhotosActionSuccessful implements GetPhotosAction {
  const factory GetPhotosActionSuccessful({required List<Photo> photos}) = _$GetPhotosActionSuccessful;

  List<Photo> get photos => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetPhotosActionSuccessfulCopyWith<GetPhotosActionSuccessful> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPhotosActionErrorCopyWith<$Res> {
  factory $GetPhotosActionErrorCopyWith(GetPhotosActionError value, $Res Function(GetPhotosActionError) then) =
      _$GetPhotosActionErrorCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class _$GetPhotosActionErrorCopyWithImpl<$Res> extends _$GetPhotosActionCopyWithImpl<$Res>
    implements $GetPhotosActionErrorCopyWith<$Res> {
  _$GetPhotosActionErrorCopyWithImpl(GetPhotosActionError _value, $Res Function(GetPhotosActionError) _then)
      : super(_value, (v) => _then(v as GetPhotosActionError));

  @override
  GetPhotosActionError get _value => super._value as GetPhotosActionError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(GetPhotosActionError(
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
class _$GetPhotosActionError implements GetPhotosActionError {
  const _$GetPhotosActionError({required this.error, required this.stackTrace});

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'GetPhotosAction.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetPhotosActionError &&
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
  $GetPhotosActionErrorCopyWith<GetPhotosActionError> get copyWith =>
      _$GetPhotosActionErrorCopyWithImpl<GetPhotosActionError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<Photo> photos) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Photo> photos)? successful,
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
    TResult Function(GetPhotosActionStart value) $default, {
    required TResult Function(GetPhotosActionSuccessful value) successful,
    required TResult Function(GetPhotosActionError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetPhotosActionStart value)? $default, {
    TResult Function(GetPhotosActionSuccessful value)? successful,
    TResult Function(GetPhotosActionError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetPhotosActionError implements GetPhotosAction, ErrorAction {
  const factory GetPhotosActionError({required Object error, required StackTrace stackTrace}) = _$GetPhotosActionError;

  Object get error => throw _privateConstructorUsedError;
  StackTrace get stackTrace => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetPhotosActionErrorCopyWith<GetPhotosActionError> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$ChangeCategoryActionTearOff {
  const _$ChangeCategoryActionTearOff();

  ChangeCategoryActionStart call({required String category}) {
    return ChangeCategoryActionStart(
      category: category,
    );
  }

  ChangeCategoryActionSuccessful successful({required List<Photo> photos}) {
    return ChangeCategoryActionSuccessful(
      photos: photos,
    );
  }

  ChangeCategoryActionError error({required Object error, required StackTrace stackTrace}) {
    return ChangeCategoryActionError(
      error: error,
      stackTrace: stackTrace,
    );
  }
}

/// @nodoc
const $ChangeCategoryAction = _$ChangeCategoryActionTearOff();

/// @nodoc
mixin _$ChangeCategoryAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String category) $default, {
    required TResult Function(List<Photo> photos) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String category)? $default, {
    TResult Function(List<Photo> photos)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ChangeCategoryActionStart value) $default, {
    required TResult Function(ChangeCategoryActionSuccessful value) successful,
    required TResult Function(ChangeCategoryActionError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ChangeCategoryActionStart value)? $default, {
    TResult Function(ChangeCategoryActionSuccessful value)? successful,
    TResult Function(ChangeCategoryActionError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeCategoryActionCopyWith<$Res> {
  factory $ChangeCategoryActionCopyWith(ChangeCategoryAction value, $Res Function(ChangeCategoryAction) then) =
      _$ChangeCategoryActionCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChangeCategoryActionCopyWithImpl<$Res> implements $ChangeCategoryActionCopyWith<$Res> {
  _$ChangeCategoryActionCopyWithImpl(this._value, this._then);

  final ChangeCategoryAction _value;
  // ignore: unused_field
  final $Res Function(ChangeCategoryAction) _then;
}

/// @nodoc
abstract class $ChangeCategoryActionStartCopyWith<$Res> {
  factory $ChangeCategoryActionStartCopyWith(
          ChangeCategoryActionStart value, $Res Function(ChangeCategoryActionStart) then) =
      _$ChangeCategoryActionStartCopyWithImpl<$Res>;
  $Res call({String category});
}

/// @nodoc
class _$ChangeCategoryActionStartCopyWithImpl<$Res> extends _$ChangeCategoryActionCopyWithImpl<$Res>
    implements $ChangeCategoryActionStartCopyWith<$Res> {
  _$ChangeCategoryActionStartCopyWithImpl(
      ChangeCategoryActionStart _value, $Res Function(ChangeCategoryActionStart) _then)
      : super(_value, (v) => _then(v as ChangeCategoryActionStart));

  @override
  ChangeCategoryActionStart get _value => super._value as ChangeCategoryActionStart;

  @override
  $Res call({
    Object? category = freezed,
  }) {
    return _then(ChangeCategoryActionStart(
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeCategoryActionStart implements ChangeCategoryActionStart {
  const _$ChangeCategoryActionStart({required this.category});

  @override
  final String category;

  @override
  String toString() {
    return 'ChangeCategoryAction(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChangeCategoryActionStart &&
            (identical(other.category, category) || const DeepCollectionEquality().equals(other.category, category)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(category);

  @JsonKey(ignore: true)
  @override
  $ChangeCategoryActionStartCopyWith<ChangeCategoryActionStart> get copyWith =>
      _$ChangeCategoryActionStartCopyWithImpl<ChangeCategoryActionStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String category) $default, {
    required TResult Function(List<Photo> photos) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String category)? $default, {
    TResult Function(List<Photo> photos)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ChangeCategoryActionStart value) $default, {
    required TResult Function(ChangeCategoryActionSuccessful value) successful,
    required TResult Function(ChangeCategoryActionError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ChangeCategoryActionStart value)? $default, {
    TResult Function(ChangeCategoryActionSuccessful value)? successful,
    TResult Function(ChangeCategoryActionError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class ChangeCategoryActionStart implements ChangeCategoryAction {
  const factory ChangeCategoryActionStart({required String category}) = _$ChangeCategoryActionStart;

  String get category => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangeCategoryActionStartCopyWith<ChangeCategoryActionStart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeCategoryActionSuccessfulCopyWith<$Res> {
  factory $ChangeCategoryActionSuccessfulCopyWith(
          ChangeCategoryActionSuccessful value, $Res Function(ChangeCategoryActionSuccessful) then) =
      _$ChangeCategoryActionSuccessfulCopyWithImpl<$Res>;
  $Res call({List<Photo> photos});
}

/// @nodoc
class _$ChangeCategoryActionSuccessfulCopyWithImpl<$Res> extends _$ChangeCategoryActionCopyWithImpl<$Res>
    implements $ChangeCategoryActionSuccessfulCopyWith<$Res> {
  _$ChangeCategoryActionSuccessfulCopyWithImpl(
      ChangeCategoryActionSuccessful _value, $Res Function(ChangeCategoryActionSuccessful) _then)
      : super(_value, (v) => _then(v as ChangeCategoryActionSuccessful));

  @override
  ChangeCategoryActionSuccessful get _value => super._value as ChangeCategoryActionSuccessful;

  @override
  $Res call({
    Object? photos = freezed,
  }) {
    return _then(ChangeCategoryActionSuccessful(
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>,
    ));
  }
}

/// @nodoc

class _$ChangeCategoryActionSuccessful implements ChangeCategoryActionSuccessful {
  const _$ChangeCategoryActionSuccessful({required this.photos});

  @override
  final List<Photo> photos;

  @override
  String toString() {
    return 'ChangeCategoryAction.successful(photos: $photos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChangeCategoryActionSuccessful &&
            (identical(other.photos, photos) || const DeepCollectionEquality().equals(other.photos, photos)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(photos);

  @JsonKey(ignore: true)
  @override
  $ChangeCategoryActionSuccessfulCopyWith<ChangeCategoryActionSuccessful> get copyWith =>
      _$ChangeCategoryActionSuccessfulCopyWithImpl<ChangeCategoryActionSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String category) $default, {
    required TResult Function(List<Photo> photos) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(photos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String category)? $default, {
    TResult Function(List<Photo> photos)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(photos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ChangeCategoryActionStart value) $default, {
    required TResult Function(ChangeCategoryActionSuccessful value) successful,
    required TResult Function(ChangeCategoryActionError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ChangeCategoryActionStart value)? $default, {
    TResult Function(ChangeCategoryActionSuccessful value)? successful,
    TResult Function(ChangeCategoryActionError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class ChangeCategoryActionSuccessful implements ChangeCategoryAction {
  const factory ChangeCategoryActionSuccessful({required List<Photo> photos}) = _$ChangeCategoryActionSuccessful;

  List<Photo> get photos => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangeCategoryActionSuccessfulCopyWith<ChangeCategoryActionSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeCategoryActionErrorCopyWith<$Res> {
  factory $ChangeCategoryActionErrorCopyWith(
          ChangeCategoryActionError value, $Res Function(ChangeCategoryActionError) then) =
      _$ChangeCategoryActionErrorCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class _$ChangeCategoryActionErrorCopyWithImpl<$Res> extends _$ChangeCategoryActionCopyWithImpl<$Res>
    implements $ChangeCategoryActionErrorCopyWith<$Res> {
  _$ChangeCategoryActionErrorCopyWithImpl(
      ChangeCategoryActionError _value, $Res Function(ChangeCategoryActionError) _then)
      : super(_value, (v) => _then(v as ChangeCategoryActionError));

  @override
  ChangeCategoryActionError get _value => super._value as ChangeCategoryActionError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(ChangeCategoryActionError(
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
class _$ChangeCategoryActionError implements ChangeCategoryActionError {
  const _$ChangeCategoryActionError({required this.error, required this.stackTrace});

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'ChangeCategoryAction.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChangeCategoryActionError &&
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
  $ChangeCategoryActionErrorCopyWith<ChangeCategoryActionError> get copyWith =>
      _$ChangeCategoryActionErrorCopyWithImpl<ChangeCategoryActionError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String category) $default, {
    required TResult Function(List<Photo> photos) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String category)? $default, {
    TResult Function(List<Photo> photos)? successful,
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
    TResult Function(ChangeCategoryActionStart value) $default, {
    required TResult Function(ChangeCategoryActionSuccessful value) successful,
    required TResult Function(ChangeCategoryActionError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ChangeCategoryActionStart value)? $default, {
    TResult Function(ChangeCategoryActionSuccessful value)? successful,
    TResult Function(ChangeCategoryActionError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ChangeCategoryActionError implements ChangeCategoryAction, ErrorAction {
  const factory ChangeCategoryActionError({required Object error, required StackTrace stackTrace}) =
      _$ChangeCategoryActionError;

  Object get error => throw _privateConstructorUsedError;
  StackTrace get stackTrace => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangeCategoryActionErrorCopyWith<ChangeCategoryActionError> get copyWith => throw _privateConstructorUsedError;
}
