// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_review_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddReviewRequest _$AddReviewRequestFromJson(Map<String, dynamic> json) {
  return _AddReviewRequest.fromJson(json);
}

/// @nodoc
mixin _$AddReviewRequest {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get review => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddReviewRequestCopyWith<AddReviewRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddReviewRequestCopyWith<$Res> {
  factory $AddReviewRequestCopyWith(
          AddReviewRequest value, $Res Function(AddReviewRequest) then) =
      _$AddReviewRequestCopyWithImpl<$Res, AddReviewRequest>;
  @useResult
  $Res call({String id, String name, String review});
}

/// @nodoc
class _$AddReviewRequestCopyWithImpl<$Res, $Val extends AddReviewRequest>
    implements $AddReviewRequestCopyWith<$Res> {
  _$AddReviewRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? review = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      review: null == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddReviewRequestCopyWith<$Res>
    implements $AddReviewRequestCopyWith<$Res> {
  factory _$$_AddReviewRequestCopyWith(
          _$_AddReviewRequest value, $Res Function(_$_AddReviewRequest) then) =
      __$$_AddReviewRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String review});
}

/// @nodoc
class __$$_AddReviewRequestCopyWithImpl<$Res>
    extends _$AddReviewRequestCopyWithImpl<$Res, _$_AddReviewRequest>
    implements _$$_AddReviewRequestCopyWith<$Res> {
  __$$_AddReviewRequestCopyWithImpl(
      _$_AddReviewRequest _value, $Res Function(_$_AddReviewRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? review = null,
  }) {
    return _then(_$_AddReviewRequest(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      review: null == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddReviewRequest implements _AddReviewRequest {
  _$_AddReviewRequest(
      {required this.id, required this.name, required this.review});

  factory _$_AddReviewRequest.fromJson(Map<String, dynamic> json) =>
      _$$_AddReviewRequestFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String review;

  @override
  String toString() {
    return 'AddReviewRequest(id: $id, name: $name, review: $review)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddReviewRequest &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.review, review) || other.review == review));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, review);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddReviewRequestCopyWith<_$_AddReviewRequest> get copyWith =>
      __$$_AddReviewRequestCopyWithImpl<_$_AddReviewRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddReviewRequestToJson(
      this,
    );
  }
}

abstract class _AddReviewRequest implements AddReviewRequest {
  factory _AddReviewRequest(
      {required final String id,
      required final String name,
      required final String review}) = _$_AddReviewRequest;

  factory _AddReviewRequest.fromJson(Map<String, dynamic> json) =
      _$_AddReviewRequest.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get review;
  @override
  @JsonKey(ignore: true)
  _$$_AddReviewRequestCopyWith<_$_AddReviewRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
