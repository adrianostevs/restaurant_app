// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remote_source.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RemoteSource<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(APIError error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(APIError error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(APIError error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RemoteSourceSuccess<T> value) success,
    required TResult Function(RemoteSourceError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RemoteSourceSuccess<T> value)? success,
    TResult? Function(RemoteSourceError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RemoteSourceSuccess<T> value)? success,
    TResult Function(RemoteSourceError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteSourceCopyWith<T, $Res> {
  factory $RemoteSourceCopyWith(
          RemoteSource<T> value, $Res Function(RemoteSource<T>) then) =
      _$RemoteSourceCopyWithImpl<T, $Res, RemoteSource<T>>;
}

/// @nodoc
class _$RemoteSourceCopyWithImpl<T, $Res, $Val extends RemoteSource<T>>
    implements $RemoteSourceCopyWith<T, $Res> {
  _$RemoteSourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RemoteSourceSuccessCopyWith<T, $Res> {
  factory _$$RemoteSourceSuccessCopyWith(_$RemoteSourceSuccess<T> value,
          $Res Function(_$RemoteSourceSuccess<T>) then) =
      __$$RemoteSourceSuccessCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$RemoteSourceSuccessCopyWithImpl<T, $Res>
    extends _$RemoteSourceCopyWithImpl<T, $Res, _$RemoteSourceSuccess<T>>
    implements _$$RemoteSourceSuccessCopyWith<T, $Res> {
  __$$RemoteSourceSuccessCopyWithImpl(_$RemoteSourceSuccess<T> _value,
      $Res Function(_$RemoteSourceSuccess<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$RemoteSourceSuccess<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$RemoteSourceSuccess<T> implements RemoteSourceSuccess<T> {
  const _$RemoteSourceSuccess({required this.data});

  @override
  final T data;

  @override
  String toString() {
    return 'RemoteSource<$T>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoteSourceSuccess<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoteSourceSuccessCopyWith<T, _$RemoteSourceSuccess<T>> get copyWith =>
      __$$RemoteSourceSuccessCopyWithImpl<T, _$RemoteSourceSuccess<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(APIError error) error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(APIError error)? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(APIError error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RemoteSourceSuccess<T> value) success,
    required TResult Function(RemoteSourceError<T> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RemoteSourceSuccess<T> value)? success,
    TResult? Function(RemoteSourceError<T> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RemoteSourceSuccess<T> value)? success,
    TResult Function(RemoteSourceError<T> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class RemoteSourceSuccess<T> implements RemoteSource<T> {
  const factory RemoteSourceSuccess({required final T data}) =
      _$RemoteSourceSuccess<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$RemoteSourceSuccessCopyWith<T, _$RemoteSourceSuccess<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoteSourceErrorCopyWith<T, $Res> {
  factory _$$RemoteSourceErrorCopyWith(_$RemoteSourceError<T> value,
          $Res Function(_$RemoteSourceError<T>) then) =
      __$$RemoteSourceErrorCopyWithImpl<T, $Res>;
  @useResult
  $Res call({APIError error});

  $APIErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$RemoteSourceErrorCopyWithImpl<T, $Res>
    extends _$RemoteSourceCopyWithImpl<T, $Res, _$RemoteSourceError<T>>
    implements _$$RemoteSourceErrorCopyWith<T, $Res> {
  __$$RemoteSourceErrorCopyWithImpl(_$RemoteSourceError<T> _value,
      $Res Function(_$RemoteSourceError<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$RemoteSourceError<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as APIError,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $APIErrorCopyWith<$Res> get error {
    return $APIErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$RemoteSourceError<T> implements RemoteSourceError<T> {
  const _$RemoteSourceError({required this.error});

  @override
  final APIError error;

  @override
  String toString() {
    return 'RemoteSource<$T>.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoteSourceError<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoteSourceErrorCopyWith<T, _$RemoteSourceError<T>> get copyWith =>
      __$$RemoteSourceErrorCopyWithImpl<T, _$RemoteSourceError<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(APIError error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(APIError error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(APIError error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RemoteSourceSuccess<T> value) success,
    required TResult Function(RemoteSourceError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RemoteSourceSuccess<T> value)? success,
    TResult? Function(RemoteSourceError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RemoteSourceSuccess<T> value)? success,
    TResult Function(RemoteSourceError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RemoteSourceError<T> implements RemoteSource<T> {
  const factory RemoteSourceError({required final APIError error}) =
      _$RemoteSourceError<T>;

  APIError get error;
  @JsonKey(ignore: true)
  _$$RemoteSourceErrorCopyWith<T, _$RemoteSourceError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
