// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_restaurant_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DetailRestaurantResponse _$$_DetailRestaurantResponseFromJson(
        Map<String, dynamic> json) =>
    _$_DetailRestaurantResponse(
      restaurant: json['restaurant'] == null
          ? null
          : RestaurantResponse.fromJson(
              json['restaurant'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DetailRestaurantResponseToJson(
        _$_DetailRestaurantResponse instance) =>
    <String, dynamic>{
      'restaurant': instance.restaurant,
    };
