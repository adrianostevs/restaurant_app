// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_restaurant_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListRestaurantResponse _$$_ListRestaurantResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ListRestaurantResponse(
      error: json['error'] as bool?,
      message: json['message'] as String?,
      count: json['count'] as int?,
      restaurants: (json['restaurants'] as List<dynamic>?)
          ?.map((e) => RestaurantResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ListRestaurantResponseToJson(
        _$_ListRestaurantResponse instance) =>
    <String, dynamic>{
      'error': instance.error,
      'message': instance.message,
      'count': instance.count,
      'restaurants': instance.restaurants,
    };
