// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_categories_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListCategoriesResponse _$$_ListCategoriesResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ListCategoriesResponse(
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => CategoriesResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ListCategoriesResponseToJson(
        _$_ListCategoriesResponse instance) =>
    <String, dynamic>{
      'categories': instance.categories,
    };
