// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurants.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Restaurants _$$_RestaurantsFromJson(Map<String, dynamic> json) =>
    _$_Restaurants(
      id: json['id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      city: json['city'] as String?,
      address: json['address'] as String?,
      pictureId: json['pictureId'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      menus: json['menus'] == null
          ? null
          : Menus.fromJson(json['menus'] as Map<String, dynamic>),
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => Categories.fromJson(e as Map<String, dynamic>))
          .toList(),
      customerReviews: (json['customerReviews'] as List<dynamic>?)
          ?.map((e) => CustomerReviews.fromJson(e as Map<String, dynamic>))
          .toList(),
      isFavorite: json['isFavorite'] as bool?,
    );

Map<String, dynamic> _$$_RestaurantsToJson(_$_Restaurants instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'city': instance.city,
      'address': instance.address,
      'pictureId': instance.pictureId,
      'rating': instance.rating,
      'menus': instance.menus,
      'categories': instance.categories,
      'customerReviews': instance.customerReviews,
      'isFavorite': instance.isFavorite,
    };
