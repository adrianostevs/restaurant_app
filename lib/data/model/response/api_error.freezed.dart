// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

APIError _$APIErrorFromJson(Map<String, dynamic> json) {
  return _APIError.fromJson(json);
}

/// @nodoc
mixin _$APIError {
  int get statusCode => throw _privateConstructorUsedError;
  @APIErrorMessagesConverter()
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $APIErrorCopyWith<APIError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $APIErrorCopyWith<$Res> {
  factory $APIErrorCopyWith(APIError value, $Res Function(APIError) then) =
      _$APIErrorCopyWithImpl<$Res, APIError>;
  @useResult
  $Res call({int statusCode, @APIErrorMessagesConverter() String message});
}

/// @nodoc
class _$APIErrorCopyWithImpl<$Res, $Val extends APIError>
    implements $APIErrorCopyWith<$Res> {
  _$APIErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_APIErrorCopyWith<$Res> implements $APIErrorCopyWith<$Res> {
  factory _$$_APIErrorCopyWith(
          _$_APIError value, $Res Function(_$_APIError) then) =
      __$$_APIErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int statusCode, @APIErrorMessagesConverter() String message});
}

/// @nodoc
class __$$_APIErrorCopyWithImpl<$Res>
    extends _$APIErrorCopyWithImpl<$Res, _$_APIError>
    implements _$$_APIErrorCopyWith<$Res> {
  __$$_APIErrorCopyWithImpl(
      _$_APIError _value, $Res Function(_$_APIError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? message = null,
  }) {
    return _then(_$_APIError(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_APIError implements _APIError {
  const _$_APIError(
      {required this.statusCode,
      @APIErrorMessagesConverter() required this.message});

  factory _$_APIError.fromJson(Map<String, dynamic> json) =>
      _$$_APIErrorFromJson(json);

  @override
  final int statusCode;
  @override
  @APIErrorMessagesConverter()
  final String message;

  @override
  String toString() {
    return 'APIError(statusCode: $statusCode, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_APIError &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, statusCode, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_APIErrorCopyWith<_$_APIError> get copyWith =>
      __$$_APIErrorCopyWithImpl<_$_APIError>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_APIErrorToJson(
      this,
    );
  }
}

abstract class _APIError implements APIError {
  const factory _APIError(
          {required final int statusCode,
          @APIErrorMessagesConverter() required final String message}) =
      _$_APIError;

  factory _APIError.fromJson(Map<String, dynamic> json) = _$_APIError.fromJson;

  @override
  int get statusCode;
  @override
  @APIErrorMessagesConverter()
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_APIErrorCopyWith<_$_APIError> get copyWith =>
      throw _privateConstructorUsedError;
}
