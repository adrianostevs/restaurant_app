// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_restaurant_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DetailRestaurantResponse _$DetailRestaurantResponseFromJson(
    Map<String, dynamic> json) {
  return _DetailRestaurantResponse.fromJson(json);
}

/// @nodoc
mixin _$DetailRestaurantResponse {
  RestaurantResponse? get restaurant => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailRestaurantResponseCopyWith<DetailRestaurantResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailRestaurantResponseCopyWith<$Res> {
  factory $DetailRestaurantResponseCopyWith(DetailRestaurantResponse value,
          $Res Function(DetailRestaurantResponse) then) =
      _$DetailRestaurantResponseCopyWithImpl<$Res, DetailRestaurantResponse>;
  @useResult
  $Res call({RestaurantResponse? restaurant});

  $RestaurantResponseCopyWith<$Res>? get restaurant;
}

/// @nodoc
class _$DetailRestaurantResponseCopyWithImpl<$Res,
        $Val extends DetailRestaurantResponse>
    implements $DetailRestaurantResponseCopyWith<$Res> {
  _$DetailRestaurantResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? restaurant = freezed,
  }) {
    return _then(_value.copyWith(
      restaurant: freezed == restaurant
          ? _value.restaurant
          : restaurant // ignore: cast_nullable_to_non_nullable
              as RestaurantResponse?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RestaurantResponseCopyWith<$Res>? get restaurant {
    if (_value.restaurant == null) {
      return null;
    }

    return $RestaurantResponseCopyWith<$Res>(_value.restaurant!, (value) {
      return _then(_value.copyWith(restaurant: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DetailRestaurantResponseCopyWith<$Res>
    implements $DetailRestaurantResponseCopyWith<$Res> {
  factory _$$_DetailRestaurantResponseCopyWith(
          _$_DetailRestaurantResponse value,
          $Res Function(_$_DetailRestaurantResponse) then) =
      __$$_DetailRestaurantResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RestaurantResponse? restaurant});

  @override
  $RestaurantResponseCopyWith<$Res>? get restaurant;
}

/// @nodoc
class __$$_DetailRestaurantResponseCopyWithImpl<$Res>
    extends _$DetailRestaurantResponseCopyWithImpl<$Res,
        _$_DetailRestaurantResponse>
    implements _$$_DetailRestaurantResponseCopyWith<$Res> {
  __$$_DetailRestaurantResponseCopyWithImpl(_$_DetailRestaurantResponse _value,
      $Res Function(_$_DetailRestaurantResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? restaurant = freezed,
  }) {
    return _then(_$_DetailRestaurantResponse(
      restaurant: freezed == restaurant
          ? _value.restaurant
          : restaurant // ignore: cast_nullable_to_non_nullable
              as RestaurantResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DetailRestaurantResponse implements _DetailRestaurantResponse {
  _$_DetailRestaurantResponse({this.restaurant});

  factory _$_DetailRestaurantResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DetailRestaurantResponseFromJson(json);

  @override
  final RestaurantResponse? restaurant;

  @override
  String toString() {
    return 'DetailRestaurantResponse(restaurant: $restaurant)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailRestaurantResponse &&
            (identical(other.restaurant, restaurant) ||
                other.restaurant == restaurant));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, restaurant);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailRestaurantResponseCopyWith<_$_DetailRestaurantResponse>
      get copyWith => __$$_DetailRestaurantResponseCopyWithImpl<
          _$_DetailRestaurantResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DetailRestaurantResponseToJson(
      this,
    );
  }
}

abstract class _DetailRestaurantResponse implements DetailRestaurantResponse {
  factory _DetailRestaurantResponse({final RestaurantResponse? restaurant}) =
      _$_DetailRestaurantResponse;

  factory _DetailRestaurantResponse.fromJson(Map<String, dynamic> json) =
      _$_DetailRestaurantResponse.fromJson;

  @override
  RestaurantResponse? get restaurant;
  @override
  @JsonKey(ignore: true)
  _$$_DetailRestaurantResponseCopyWith<_$_DetailRestaurantResponse>
      get copyWith => throw _privateConstructorUsedError;
}
