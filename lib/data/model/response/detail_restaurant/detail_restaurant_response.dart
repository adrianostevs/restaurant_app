import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_app/data/model/response/restaurant/restaurant_response.dart';

part 'detail_restaurant_response.g.dart';
part 'detail_restaurant_response.freezed.dart';

@freezed
class DetailRestaurantResponse with _$DetailRestaurantResponse {
  factory DetailRestaurantResponse({
    RestaurantResponse? restaurant,
  }) = _DetailRestaurantResponse;

  factory DetailRestaurantResponse.fromJson(Map<String, dynamic> json) =>
      _$DetailRestaurantResponseFromJson(json);
}
