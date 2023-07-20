import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_app/data/model/response/categories/categories_response.dart';
import 'package:restaurant_app/data/model/response/customer_reviews/customer_reviews_response.dart';
import 'package:restaurant_app/data/model/response/menus/menus_response.dart';

part 'restaurant_response.g.dart';
part 'restaurant_response.freezed.dart';

@freezed
class RestaurantResponse with _$RestaurantResponse {
  factory RestaurantResponse({
    String? id,
    String? name,
    String? description,
    String? pictureId,
    String? city,
    String? address,
    double? rating,
    List<CategoriesResponse>? categories,
    MenusResponse? menus,
    List<CustomerReviewsResponse>? customerReviews,
  }) = _RestaurantResponse;

  factory RestaurantResponse.fromJson(Map<String, dynamic> json) =>
      _$RestaurantResponseFromJson(json);
}
