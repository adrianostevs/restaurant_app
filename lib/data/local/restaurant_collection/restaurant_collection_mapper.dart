import 'package:restaurant_app/data/local/restaurant_collection/restaurant_collection.dart';

import '../../../domain/entity/restaurants/restaurants.dart';

class RestaurantCollectionMapper {
  const RestaurantCollectionMapper._();

  static RestaurantCollection mapDomainToJson(Restaurants restaurants) {
    return RestaurantCollection(
        id: restaurants.id,
        name: restaurants.name,
        pictureId: restaurants.pictureId,
        city: restaurants.city,
        rating: restaurants.rating);
  }
}
