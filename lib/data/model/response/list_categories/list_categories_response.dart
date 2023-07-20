import 'package:freezed_annotation/freezed_annotation.dart';

import '../categories/categories_response.dart';

part 'list_categories_response.g.dart';
part 'list_categories_response.freezed.dart';

@freezed
class ListCategoriesResponse with _$ListCategoriesResponse {
  factory ListCategoriesResponse({
    List<CategoriesResponse>? categories,
  }) = _ListCategoriesResponse;

  factory ListCategoriesResponse.fromJson(Map<String, dynamic> json) =>
      _$ListCategoriesResponseFromJson(json);
}
