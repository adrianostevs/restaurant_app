import 'package:restaurant_app/data/model/response/detail_restaurant/detail_restaurant_response.dart';
import 'package:restaurant_app/data/model/response/restaurant/restaurant_response.dart';
import 'package:restaurant_app/domain/entity/detail_restaurant/detail_restaurant.dart';
import 'package:restaurant_app/domain/entity/restaurants/restaurants_res_mapper.dart';

class DetailRestaurantResMapper {
  const DetailRestaurantResMapper._();

  static DetailRestaurant mapResponseToDomain(
      DetailRestaurantResponse response) {
    return DetailRestaurant(
        restaurant: RestaurantResMapper.mapResponseToDomain(
            response.restaurant ?? RestaurantResponse()));
  }
}
