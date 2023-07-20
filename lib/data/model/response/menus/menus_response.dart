import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_app/data/model/response/categories/categories_response.dart';

part 'menus_response.g.dart';
part 'menus_response.freezed.dart';

@freezed
class MenusResponse with _$MenusResponse {
  factory MenusResponse({
    List<CategoriesResponse>? foods,
    List<CategoriesResponse>? drinks,
  }) = _MenusResponse;

  factory MenusResponse.fromJson(Map<String, dynamic> json) =>
      _$MenusResponseFromJson(json);
}
