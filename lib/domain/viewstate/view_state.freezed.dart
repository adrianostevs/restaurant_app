// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ViewState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ViewstateInitial<T> value) initial,
    required TResult Function(ViewStateLoading<T> value) loading,
    required TResult Function(ViewStateSuccess<T> value) success,
    required TResult Function(ViewStateError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ViewstateInitial<T> value)? initial,
    TResult? Function(ViewStateLoading<T> value)? loading,
    TResult? Function(ViewStateSuccess<T> value)? success,
    TResult? Function(ViewStateError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ViewstateInitial<T> value)? initial,
    TResult Function(ViewStateLoading<T> value)? loading,
    TResult Function(ViewStateSuccess<T> value)? success,
    TResult Function(ViewStateError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewStateCopyWith<T, $Res> {
  factory $ViewStateCopyWith(
          ViewState<T> value, $Res Function(ViewState<T>) then) =
      _$ViewStateCopyWithImpl<T, $Res, ViewState<T>>;
}

/// @nodoc
class _$ViewStateCopyWithImpl<T, $Res, $Val extends ViewState<T>>
    implements $ViewStateCopyWith<T, $Res> {
  _$ViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ViewstateInitialCopyWith<T, $Res> {
  factory _$$ViewstateInitialCopyWith(_$ViewstateInitial<T> value,
          $Res Function(_$ViewstateInitial<T>) then) =
      __$$ViewstateInitialCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ViewstateInitialCopyWithImpl<T, $Res>
    extends _$ViewStateCopyWithImpl<T, $Res, _$ViewstateInitial<T>>
    implements _$$ViewstateInitialCopyWith<T, $Res> {
  __$$ViewstateInitialCopyWithImpl(
      _$ViewstateInitial<T> _value, $Res Function(_$ViewstateInitial<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ViewstateInitial<T> implements ViewstateInitial<T> {
  const _$ViewstateInitial();

  @override
  String toString() {
    return 'ViewState<$T>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ViewstateInitial<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String message)? error,
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
    required TResult Function(ViewstateInitial<T> value) initial,
    required TResult Function(ViewStateLoading<T> value) loading,
    required TResult Function(ViewStateSuccess<T> value) success,
    required TResult Function(ViewStateError<T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ViewstateInitial<T> value)? initial,
    TResult? Function(ViewStateLoading<T> value)? loading,
    TResult? Function(ViewStateSuccess<T> value)? success,
    TResult? Function(ViewStateError<T> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ViewstateInitial<T> value)? initial,
    TResult Function(ViewStateLoading<T> value)? loading,
    TResult Function(ViewStateSuccess<T> value)? success,
    TResult Function(ViewStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ViewstateInitial<T> implements ViewState<T> {
  const factory ViewstateInitial() = _$ViewstateInitial<T>;
}

/// @nodoc
abstract class _$$ViewStateLoadingCopyWith<T, $Res> {
  factory _$$ViewStateLoadingCopyWith(_$ViewStateLoading<T> value,
          $Res Function(_$ViewStateLoading<T>) then) =
      __$$ViewStateLoadingCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ViewStateLoadingCopyWithImpl<T, $Res>
    extends _$ViewStateCopyWithImpl<T, $Res, _$ViewStateLoading<T>>
    implements _$$ViewStateLoadingCopyWith<T, $Res> {
  __$$ViewStateLoadingCopyWithImpl(
      _$ViewStateLoading<T> _value, $Res Function(_$ViewStateLoading<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ViewStateLoading<T> implements ViewStateLoading<T> {
  const _$ViewStateLoading();

  @override
  String toString() {
    return 'ViewState<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ViewStateLoading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ViewstateInitial<T> value) initial,
    required TResult Function(ViewStateLoading<T> value) loading,
    required TResult Function(ViewStateSuccess<T> value) success,
    required TResult Function(ViewStateError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ViewstateInitial<T> value)? initial,
    TResult? Function(ViewStateLoading<T> value)? loading,
    TResult? Function(ViewStateSuccess<T> value)? success,
    TResult? Function(ViewStateError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ViewstateInitial<T> value)? initial,
    TResult Function(ViewStateLoading<T> value)? loading,
    TResult Function(ViewStateSuccess<T> value)? success,
    TResult Function(ViewStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ViewStateLoading<T> implements ViewState<T> {
  const factory ViewStateLoading() = _$ViewStateLoading<T>;
}

/// @nodoc
abstract class _$$ViewStateSuccessCopyWith<T, $Res> {
  factory _$$ViewStateSuccessCopyWith(_$ViewStateSuccess<T> value,
          $Res Function(_$ViewStateSuccess<T>) then) =
      __$$ViewStateSuccessCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$ViewStateSuccessCopyWithImpl<T, $Res>
    extends _$ViewStateCopyWithImpl<T, $Res, _$ViewStateSuccess<T>>
    implements _$$ViewStateSuccessCopyWith<T, $Res> {
  __$$ViewStateSuccessCopyWithImpl(
      _$ViewStateSuccess<T> _value, $Res Function(_$ViewStateSuccess<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ViewStateSuccess<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ViewStateSuccess<T> implements ViewStateSuccess<T> {
  const _$ViewStateSuccess({required this.data});

  @override
  final T data;

  @override
  String toString() {
    return 'ViewState<$T>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ViewStateSuccess<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ViewStateSuccessCopyWith<T, _$ViewStateSuccess<T>> get copyWith =>
      __$$ViewStateSuccessCopyWithImpl<T, _$ViewStateSuccess<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String message) error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String message)? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String message)? error,
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
    required TResult Function(ViewstateInitial<T> value) initial,
    required TResult Function(ViewStateLoading<T> value) loading,
    required TResult Function(ViewStateSuccess<T> value) success,
    required TResult Function(ViewStateError<T> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ViewstateInitial<T> value)? initial,
    TResult? Function(ViewStateLoading<T> value)? loading,
    TResult? Function(ViewStateSuccess<T> value)? success,
    TResult? Function(ViewStateError<T> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ViewstateInitial<T> value)? initial,
    TResult Function(ViewStateLoading<T> value)? loading,
    TResult Function(ViewStateSuccess<T> value)? success,
    TResult Function(ViewStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ViewStateSuccess<T> implements ViewState<T> {
  const factory ViewStateSuccess({required final T data}) =
      _$ViewStateSuccess<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$ViewStateSuccessCopyWith<T, _$ViewStateSuccess<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ViewStateErrorCopyWith<T, $Res> {
  factory _$$ViewStateErrorCopyWith(
          _$ViewStateError<T> value, $Res Function(_$ViewStateError<T>) then) =
      __$$ViewStateErrorCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ViewStateErrorCopyWithImpl<T, $Res>
    extends _$ViewStateCopyWithImpl<T, $Res, _$ViewStateError<T>>
    implements _$$ViewStateErrorCopyWith<T, $Res> {
  __$$ViewStateErrorCopyWithImpl(
      _$ViewStateError<T> _value, $Res Function(_$ViewStateError<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ViewStateError<T>(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ViewStateError<T> implements ViewStateError<T> {
  const _$ViewStateError({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ViewState<$T>.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ViewStateError<T> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ViewStateErrorCopyWith<T, _$ViewStateError<T>> get copyWith =>
      __$$ViewStateErrorCopyWithImpl<T, _$ViewStateError<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ViewstateInitial<T> value) initial,
    required TResult Function(ViewStateLoading<T> value) loading,
    required TResult Function(ViewStateSuccess<T> value) success,
    required TResult Function(ViewStateError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ViewstateInitial<T> value)? initial,
    TResult? Function(ViewStateLoading<T> value)? loading,
    TResult? Function(ViewStateSuccess<T> value)? success,
    TResult? Function(ViewStateError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ViewstateInitial<T> value)? initial,
    TResult Function(ViewStateLoading<T> value)? loading,
    TResult Function(ViewStateSuccess<T> value)? success,
    TResult Function(ViewStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ViewStateError<T> implements ViewState<T> {
  const factory ViewStateError({required final String message}) =
      _$ViewStateError<T>;

  String get message;
  @JsonKey(ignore: true)
  _$$ViewStateErrorCopyWith<T, _$ViewStateError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
