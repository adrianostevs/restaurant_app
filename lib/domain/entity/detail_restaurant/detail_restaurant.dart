import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_app/domain/entity/restaurants/restaurants.dart';

part 'detail_restaurant.freezed.dart';

@freezed
class DetailRestaurant with _$DetailRestaurant {
  factory DetailRestaurant({
    Restaurants? restaurant,
  }) = _DetailRestaurant;
}
