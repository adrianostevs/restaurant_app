// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restaurant_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RestaurantResponse _$RestaurantResponseFromJson(Map<String, dynamic> json) {
  return _RestaurantResponse.fromJson(json);
}

/// @nodoc
mixin _$RestaurantResponse {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get pictureId => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  List<CategoriesResponse>? get categories =>
      throw _privateConstructorUsedError;
  MenusResponse? get menus => throw _privateConstructorUsedError;
  List<CustomerReviewsResponse>? get customerReviews =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RestaurantResponseCopyWith<RestaurantResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantResponseCopyWith<$Res> {
  factory $RestaurantResponseCopyWith(
          RestaurantResponse value, $Res Function(RestaurantResponse) then) =
      _$RestaurantResponseCopyWithImpl<$Res, RestaurantResponse>;
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? description,
      String? pictureId,
      String? city,
      String? address,
      double? rating,
      List<CategoriesResponse>? categories,
      MenusResponse? menus,
      List<CustomerReviewsResponse>? customerReviews});

  $MenusResponseCopyWith<$Res>? get menus;
}

/// @nodoc
class _$RestaurantResponseCopyWithImpl<$Res, $Val extends RestaurantResponse>
    implements $RestaurantResponseCopyWith<$Res> {
  _$RestaurantResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? pictureId = freezed,
    Object? city = freezed,
    Object? address = freezed,
    Object? rating = freezed,
    Object? categories = freezed,
    Object? menus = freezed,
    Object? customerReviews = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      pictureId: freezed == pictureId
          ? _value.pictureId
          : pictureId // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoriesResponse>?,
      menus: freezed == menus
          ? _value.menus
          : menus // ignore: cast_nullable_to_non_nullable
              as MenusResponse?,
      customerReviews: freezed == customerReviews
          ? _value.customerReviews
          : customerReviews // ignore: cast_nullable_to_non_nullable
              as List<CustomerReviewsResponse>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MenusResponseCopyWith<$Res>? get menus {
    if (_value.menus == null) {
      return null;
    }

    return $MenusResponseCopyWith<$Res>(_value.menus!, (value) {
      return _then(_value.copyWith(menus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RestaurantResponseCopyWith<$Res>
    implements $RestaurantResponseCopyWith<$Res> {
  factory _$$_RestaurantResponseCopyWith(_$_RestaurantResponse value,
          $Res Function(_$_RestaurantResponse) then) =
      __$$_RestaurantResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? description,
      String? pictureId,
      String? city,
      String? address,
      double? rating,
      List<CategoriesResponse>? categories,
      MenusResponse? menus,
      List<CustomerReviewsResponse>? customerReviews});

  @override
  $MenusResponseCopyWith<$Res>? get menus;
}

/// @nodoc
class __$$_RestaurantResponseCopyWithImpl<$Res>
    extends _$RestaurantResponseCopyWithImpl<$Res, _$_RestaurantResponse>
    implements _$$_RestaurantResponseCopyWith<$Res> {
  __$$_RestaurantResponseCopyWithImpl(
      _$_RestaurantResponse _value, $Res Function(_$_RestaurantResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? pictureId = freezed,
    Object? city = freezed,
    Object? address = freezed,
    Object? rating = freezed,
    Object? categories = freezed,
    Object? menus = freezed,
    Object? customerReviews = freezed,
  }) {
    return _then(_$_RestaurantResponse(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      pictureId: freezed == pictureId
          ? _value.pictureId
          : pictureId // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      categories: freezed == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoriesResponse>?,
      menus: freezed == menus
          ? _value.menus
          : menus // ignore: cast_nullable_to_non_nullable
              as MenusResponse?,
      customerReviews: freezed == customerReviews
          ? _value._customerReviews
          : customerReviews // ignore: cast_nullable_to_non_nullable
              as List<CustomerReviewsResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RestaurantResponse implements _RestaurantResponse {
  _$_RestaurantResponse(
      {this.id,
      this.name,
      this.description,
      this.pictureId,
      this.city,
      this.address,
      this.rating,
      final List<CategoriesResponse>? categories,
      this.menus,
      final List<CustomerReviewsResponse>? customerReviews})
      : _categories = categories,
        _customerReviews = customerReviews;

  factory _$_RestaurantResponse.fromJson(Map<String, dynamic> json) =>
      _$$_RestaurantResponseFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? pictureId;
  @override
  final String? city;
  @override
  final String? address;
  @override
  final double? rating;
  final List<CategoriesResponse>? _categories;
  @override
  List<CategoriesResponse>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final MenusResponse? menus;
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
    return 'RestaurantResponse(id: $id, name: $name, description: $description, pictureId: $pictureId, city: $city, address: $address, rating: $rating, categories: $categories, menus: $menus, customerReviews: $customerReviews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RestaurantResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.pictureId, pictureId) ||
                other.pictureId == pictureId) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.menus, menus) || other.menus == menus) &&
            const DeepCollectionEquality()
                .equals(other._customerReviews, _customerReviews));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      pictureId,
      city,
      address,
      rating,
      const DeepCollectionEquality().hash(_categories),
      menus,
      const DeepCollectionEquality().hash(_customerReviews));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RestaurantResponseCopyWith<_$_RestaurantResponse> get copyWith =>
      __$$_RestaurantResponseCopyWithImpl<_$_RestaurantResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RestaurantResponseToJson(
      this,
    );
  }
}

abstract class _RestaurantResponse implements RestaurantResponse {
  factory _RestaurantResponse(
          {final String? id,
          final String? name,
          final String? description,
          final String? pictureId,
          final String? city,
          final String? address,
          final double? rating,
          final List<CategoriesResponse>? categories,
          final MenusResponse? menus,
          final List<CustomerReviewsResponse>? customerReviews}) =
      _$_RestaurantResponse;

  factory _RestaurantResponse.fromJson(Map<String, dynamic> json) =
      _$_RestaurantResponse.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get pictureId;
  @override
  String? get city;
  @override
  String? get address;
  @override
  double? get rating;
  @override
  List<CategoriesResponse>? get categories;
  @override
  MenusResponse? get menus;
  @override
  List<CustomerReviewsResponse>? get customerReviews;
  @override
  @JsonKey(ignore: true)
  _$$_RestaurantResponseCopyWith<_$_RestaurantResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
