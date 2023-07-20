// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menus_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MenusResponse _$$_MenusResponseFromJson(Map<String, dynamic> json) =>
    _$_MenusResponse(
      foods: (json['foods'] as List<dynamic>?)
          ?.map((e) => CategoriesResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      drinks: (json['drinks'] as List<dynamic>?)
          ?.map((e) => CategoriesResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MenusResponseToJson(_$_MenusResponse instance) =>
    <String, dynamic>{
      'foods': instance.foods,
      'drinks': instance.drinks,
    };
