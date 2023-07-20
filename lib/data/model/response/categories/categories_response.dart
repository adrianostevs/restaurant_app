import 'package:freezed_annotation/freezed_annotation.dart';

part 'categories_response.g.dart';
part 'categories_response.freezed.dart';

@freezed
class CategoriesResponse with _$CategoriesResponse {
  factory CategoriesResponse({String? name}) = _CategoriesResponse;

  factory CategoriesResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoriesResponseFromJson(json);
}
