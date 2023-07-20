// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_restaurant.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetailRestaurant {
  Restaurants? get restaurant => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailRestaurantCopyWith<DetailRestaurant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailRestaurantCopyWith<$Res> {
  factory $DetailRestaurantCopyWith(
          DetailRestaurant value, $Res Function(DetailRestaurant) then) =
      _$DetailRestaurantCopyWithImpl<$Res, DetailRestaurant>;
  @useResult
  $Res call({Restaurants? restaurant});

  $RestaurantsCopyWith<$Res>? get restaurant;
}

/// @nodoc
class _$DetailRestaurantCopyWithImpl<$Res, $Val extends DetailRestaurant>
    implements $DetailRestaurantCopyWith<$Res> {
  _$DetailRestaurantCopyWithImpl(this._value, this._then);

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
              as Restaurants?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RestaurantsCopyWith<$Res>? get restaurant {
    if (_value.restaurant == null) {
      return null;
    }

    return $RestaurantsCopyWith<$Res>(_value.restaurant!, (value) {
      return _then(_value.copyWith(restaurant: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DetailRestaurantCopyWith<$Res>
    implements $DetailRestaurantCopyWith<$Res> {
  factory _$$_DetailRestaurantCopyWith(
          _$_DetailRestaurant value, $Res Function(_$_DetailRestaurant) then) =
      __$$_DetailRestaurantCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Restaurants? restaurant});

  @override
  $RestaurantsCopyWith<$Res>? get restaurant;
}

/// @nodoc
class __$$_DetailRestaurantCopyWithImpl<$Res>
    extends _$DetailRestaurantCopyWithImpl<$Res, _$_DetailRestaurant>
    implements _$$_DetailRestaurantCopyWith<$Res> {
  __$$_DetailRestaurantCopyWithImpl(
      _$_DetailRestaurant _value, $Res Function(_$_DetailRestaurant) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? restaurant = freezed,
  }) {
    return _then(_$_DetailRestaurant(
      restaurant: freezed == restaurant
          ? _value.restaurant
          : restaurant // ignore: cast_nullable_to_non_nullable
              as Restaurants?,
    ));
  }
}

/// @nodoc

class _$_DetailRestaurant implements _DetailRestaurant {
  _$_DetailRestaurant({this.restaurant});

  @override
  final Restaurants? restaurant;

  @override
  String toString() {
    return 'DetailRestaurant(restaurant: $restaurant)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailRestaurant &&
            (identical(other.restaurant, restaurant) ||
                other.restaurant == restaurant));
  }

  @override
  int get hashCode => Object.hash(runtimeType, restaurant);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailRestaurantCopyWith<_$_DetailRestaurant> get copyWith =>
      __$$_DetailRestaurantCopyWithImpl<_$_DetailRestaurant>(this, _$identity);
}

abstract class _DetailRestaurant implements DetailRestaurant {
  factory _DetailRestaurant({final Restaurants? restaurant}) =
      _$_DetailRestaurant;

  @override
  Restaurants? get restaurant;
  @override
  @JsonKey(ignore: true)
  _$$_DetailRestaurantCopyWith<_$_DetailRestaurant> get copyWith =>
      throw _privateConstructorUsedError;
}
