// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_customer_reviews.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ListCustomerReviews {
  List<CustomerReviews>? get customerReviews =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListCustomerReviewsCopyWith<ListCustomerReviews> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListCustomerReviewsCopyWith<$Res> {
  factory $ListCustomerReviewsCopyWith(
          ListCustomerReviews value, $Res Function(ListCustomerReviews) then) =
      _$ListCustomerReviewsCopyWithImpl<$Res, ListCustomerReviews>;
  @useResult
  $Res call({List<CustomerReviews>? customerReviews});
}

/// @nodoc
class _$ListCustomerReviewsCopyWithImpl<$Res, $Val extends ListCustomerReviews>
    implements $ListCustomerReviewsCopyWith<$Res> {
  _$ListCustomerReviewsCopyWithImpl(this._value, this._then);

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
              as List<CustomerReviews>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ListCustomerReviewsCopyWith<$Res>
    implements $ListCustomerReviewsCopyWith<$Res> {
  factory _$$_ListCustomerReviewsCopyWith(_$_ListCustomerReviews value,
          $Res Function(_$_ListCustomerReviews) then) =
      __$$_ListCustomerReviewsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CustomerReviews>? customerReviews});
}

/// @nodoc
class __$$_ListCustomerReviewsCopyWithImpl<$Res>
    extends _$ListCustomerReviewsCopyWithImpl<$Res, _$_ListCustomerReviews>
    implements _$$_ListCustomerReviewsCopyWith<$Res> {
  __$$_ListCustomerReviewsCopyWithImpl(_$_ListCustomerReviews _value,
      $Res Function(_$_ListCustomerReviews) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerReviews = freezed,
  }) {
    return _then(_$_ListCustomerReviews(
      customerReviews: freezed == customerReviews
          ? _value._customerReviews
          : customerReviews // ignore: cast_nullable_to_non_nullable
              as List<CustomerReviews>?,
    ));
  }
}

/// @nodoc

class _$_ListCustomerReviews implements _ListCustomerReviews {
  _$_ListCustomerReviews({final List<CustomerReviews>? customerReviews})
      : _customerReviews = customerReviews;

  final List<CustomerReviews>? _customerReviews;
  @override
  List<CustomerReviews>? get customerReviews {
    final value = _customerReviews;
    if (value == null) return null;
    if (_customerReviews is EqualUnmodifiableListView) return _customerReviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ListCustomerReviews(customerReviews: $customerReviews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListCustomerReviews &&
            const DeepCollectionEquality()
                .equals(other._customerReviews, _customerReviews));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_customerReviews));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListCustomerReviewsCopyWith<_$_ListCustomerReviews> get copyWith =>
      __$$_ListCustomerReviewsCopyWithImpl<_$_ListCustomerReviews>(
          this, _$identity);
}

abstract class _ListCustomerReviews implements ListCustomerReviews {
  factory _ListCustomerReviews({final List<CustomerReviews>? customerReviews}) =
      _$_ListCustomerReviews;

  @override
  List<CustomerReviews>? get customerReviews;
  @override
  @JsonKey(ignore: true)
  _$$_ListCustomerReviewsCopyWith<_$_ListCustomerReviews> get copyWith =>
      throw _privateConstructorUsedError;
}
