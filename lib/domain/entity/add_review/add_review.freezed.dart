// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_review.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddReview {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get review => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddReviewCopyWith<AddReview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddReviewCopyWith<$Res> {
  factory $AddReviewCopyWith(AddReview value, $Res Function(AddReview) then) =
      _$AddReviewCopyWithImpl<$Res, AddReview>;
  @useResult
  $Res call({String id, String name, String review});
}

/// @nodoc
class _$AddReviewCopyWithImpl<$Res, $Val extends AddReview>
    implements $AddReviewCopyWith<$Res> {
  _$AddReviewCopyWithImpl(this._value, this._then);

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
abstract class _$$_AddReviewCopyWith<$Res> implements $AddReviewCopyWith<$Res> {
  factory _$$_AddReviewCopyWith(
          _$_AddReview value, $Res Function(_$_AddReview) then) =
      __$$_AddReviewCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String review});
}

/// @nodoc
class __$$_AddReviewCopyWithImpl<$Res>
    extends _$AddReviewCopyWithImpl<$Res, _$_AddReview>
    implements _$$_AddReviewCopyWith<$Res> {
  __$$_AddReviewCopyWithImpl(
      _$_AddReview _value, $Res Function(_$_AddReview) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? review = null,
  }) {
    return _then(_$_AddReview(
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

class _$_AddReview implements _AddReview {
  _$_AddReview({required this.id, required this.name, required this.review});

  @override
  final String id;
  @override
  final String name;
  @override
  final String review;

  @override
  String toString() {
    return 'AddReview(id: $id, name: $name, review: $review)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddReview &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.review, review) || other.review == review));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, review);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddReviewCopyWith<_$_AddReview> get copyWith =>
      __$$_AddReviewCopyWithImpl<_$_AddReview>(this, _$identity);
}

abstract class _AddReview implements AddReview {
  factory _AddReview(
      {required final String id,
      required final String name,
      required final String review}) = _$_AddReview;

  @override
  String get id;
  @override
  String get name;
  @override
  String get review;
  @override
  @JsonKey(ignore: true)
  _$$_AddReviewCopyWith<_$_AddReview> get copyWith =>
      throw _privateConstructorUsedError;
}
