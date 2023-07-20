// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_customer_reviews_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListCustomerReviewsResponse _$ListCustomerReviewsResponseFromJson(
    Map<String, dynamic> json) {
  return _ListCustomerReviewsResponse.fromJson(json);
}

/// @nodoc
mixin _$ListCustomerReviewsResponse {
  List<CustomerReviewsResponse>? get customerReviews =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListCustomerReviewsResponseCopyWith<ListCustomerReviewsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListCustomerReviewsResponseCopyWith<$Res> {
  factory $ListCustomerReviewsResponseCopyWith(
          ListCustomerReviewsResponse value,
          $Res Function(ListCustomerReviewsResponse) then) =
      _$ListCustomerReviewsResponseCopyWithImpl<$Res,
          ListCustomerReviewsResponse>;
  @useResult
  $Res call({List<CustomerReviewsResponse>? customerReviews});
}

/// @nodoc
class _$ListCustomerReviewsResponseCopyWithImpl<$Res,
        $Val extends ListCustomerReviewsResponse>
    implements $ListCustomerReviewsResponseCopyWith<$Res> {
  _$ListCustomerReviewsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerReviews = freezed,
  }) {
    return _then(_value.copyWith(
      customerReviews: freezed == customerReviews
          ? _value.customerReviews
          : customerReviews // ignore: cast_nullable_to_non_nullable
              as List<CustomerReviewsResponse>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ListCustomerReviewsResponseCopyWith<$Res>
    implements $ListCustomerReviewsResponseCopyWith<$Res> {
  factory _$$_ListCustomerReviewsResponseCopyWith(
          _$_ListCustomerReviewsResponse value,
          $Res Function(_$_ListCustomerReviewsResponse) then) =
      __$$_ListCustomerReviewsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CustomerReviewsResponse>? customerReviews});
}

/// @nodoc
class __$$_ListCustomerReviewsResponseCopyWithImpl<$Res>
    extends _$ListCustomerReviewsResponseCopyWithImpl<$Res,
        _$_ListCustomerReviewsResponse>
    implements _$$_ListCustomerReviewsResponseCopyWith<$Res> {
  __$$_ListCustomerReviewsResponseCopyWithImpl(
      _$_ListCustomerReviewsResponse _value,
      $Res Function(_$_ListCustomerReviewsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerReviews = freezed,
  }) {
    return _then(_$_ListCustomerReviewsResponse(
      customerReviews: freezed == customerReviews
          ? _value._customerReviews
          : customerReviews // ignore: cast_nullable_to_non_nullable
              as List<CustomerReviewsResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListCustomerReviewsResponse implements _ListCustomerReviewsResponse {
  _$_ListCustomerReviewsResponse(
      {final List<CustomerReviewsResponse>? customerReviews})
      : _customerReviews = customerReviews;

  factory _$_ListCustomerReviewsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ListCustomerReviewsResponseFromJson(json);

  final List<CustomerReviewsResponse>? _customerReviews;
  @override
  List<CustomerReviewsResponse>? get customerReviews {
    final value = _customerReviews;
    if (value == null) return null;
    if (_customerReviews is EqualUnmodifiableListView) return _customerReviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ListCustomerReviewsResponse(customerReviews: $customerReviews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListCustomerReviewsResponse &&
            const DeepCollectionEquality()
                .equals(other._customerReviews, _customerReviews));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_customerReviews));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListCustomerReviewsResponseCopyWith<_$_ListCustomerReviewsResponse>
      get copyWith => __$$_ListCustomerReviewsResponseCopyWithImpl<
          _$_ListCustomerReviewsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListCustomerReviewsResponseToJson(
      this,
    );
  }
}

abstract class _ListCustomerReviewsResponse
    implements ListCustomerReviewsResponse {
  factory _ListCustomerReviewsResponse(
          {final List<CustomerReviewsResponse>? customerReviews}) =
      _$_ListCustomerReviewsResponse;

  factory _ListCustomerReviewsResponse.fromJson(Map<String, dynamic> json) =
      _$_ListCustomerReviewsResponse.fromJson;

  @override
  List<CustomerReviewsResponse>? get customerReviews;
  @override
  @JsonKey(ignore: true)
  _$$_ListCustomerReviewsResponseCopyWith<_$_ListCustomerReviewsResponse>
      get copyWith => throw _privateConstructorUsedError;
}
