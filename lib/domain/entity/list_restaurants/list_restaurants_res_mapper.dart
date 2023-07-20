import 'package:restaurant_app/data/model/response/list_restaurant/list_restaurant_response.dart';
import 'package:restaurant_app/domain/entity/list_restaurants/list_restaurants.dart';
import 'package:restaurant_app/domain/entity/restaurants/restaurants.dart';
import 'package:restaurant_app/domain/entity/restaurants/restaurants_res_mapper.dart';

class ListRestaurantResMapper {
  const ListRestaurantResMapper._();

  static ListRestaurants mapResponseToDomain(ListRestaurantResponse response) {
    List<Restaurants> listRestaurant = [];
    response.restaurants?.forEach(
      (element) {
        listRestaurant.add(RestaurantResMapper.mapResponseToDomain(element));
      },
    );
    return ListRestaurants(restaurant: listRestaurant);
  }
}
