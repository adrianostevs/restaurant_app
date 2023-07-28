// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_reviews.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CustomerReviews _$CustomerReviewsFromJson(Map<String, dynamic> json) {
  return _CustomerReviews.fromJson(json);
}

/// @nodoc
mixin _$CustomerReviews {
  String? get name => throw _privateConstructorUsedError;
  String? get review => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerReviewsCopyWith<CustomerReviews> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerReviewsCopyWith<$Res> {
  factory $CustomerReviewsCopyWith(
          CustomerReviews value, $Res Function(CustomerReviews) then) =
      _$CustomerReviewsCopyWithImpl<$Res, CustomerReviews>;
  @useResult
  $Res call({String? name, String? review, String? date});
}

/// @nodoc
class _$CustomerReviewsCopyWithImpl<$Res, $Val extends CustomerReviews>
    implements $CustomerReviewsCopyWith<$Res> {
  _$CustomerReviewsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? review = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      review: freezed == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CustomerReviewsCopyWith<$Res>
    implements $CustomerReviewsCopyWith<$Res> {
  factory _$$_CustomerReviewsCopyWith(
          _$_CustomerReviews value, $Res Function(_$_CustomerReviews) then) =
      __$$_CustomerReviewsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? review, String? date});
}

/// @nodoc
class __$$_CustomerReviewsCopyWithImpl<$Res>
    extends _$CustomerReviewsCopyWithImpl<$Res, _$_CustomerReviews>
    implements _$$_CustomerReviewsCopyWith<$Res> {
  __$$_CustomerReviewsCopyWithImpl(
      _$_CustomerReviews _value, $Res Function(_$_CustomerReviews) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? review = freezed,
    Object? date = freezed,
  }) {
    return _then(_$_CustomerReviews(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      review: freezed == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CustomerReviews implements _CustomerReviews {
  _$_CustomerReviews({this.name, this.review, this.date});

  factory _$_CustomerReviews.fromJson(Map<String, dynamic> json) =>
      _$$_CustomerReviewsFromJson(json);

  @override
  final String? name;
  @override
  final String? review;
  @override
  final String? date;

  @override
  String toString() {
    return 'CustomerReviews(name: $name, review: $review, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomerReviews &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.review, review) || other.review == review) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, review, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CustomerReviewsCopyWith<_$_CustomerReviews> get copyWith =>
      __$$_CustomerReviewsCopyWithImpl<_$_CustomerReviews>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerReviewsToJson(
      this,
    );
  }
}

abstract class _CustomerReviews implements CustomerReviews {
  factory _CustomerReviews(
      {final String? name,
      final String? review,
      final String? date}) = _$_CustomerReviews;

  factory _CustomerReviews.fromJson(Map<String, dynamic> json) =
      _$_CustomerReviews.fromJson;

  @override
  String? get name;
  @override
  String? get review;
  @override
  String? get date;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerReviewsCopyWith<_$_CustomerReviews> get copyWith =>
      throw _privateConstructorUsedError;
}
