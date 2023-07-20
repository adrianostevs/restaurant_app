import 'package:freezed_annotation/freezed_annotation.dart';

import '../restaurant/restaurant_response.dart';

part 'list_restaurant_response.g.dart';
part 'list_restaurant_response.freezed.dart';

@freezed
class ListRestaurantResponse with _$ListRestaurantResponse {
  factory ListRestaurantResponse({
    bool? error,
    String? message,
    int? count,
    List<RestaurantResponse>? restaurants,
  }) = _ListRestaurantResponse;

  factory ListRestaurantResponse.fromJson(Map<String, dynamic> json) =>
      _$ListRestaurantResponseFromJson(json);
}
