import 'package:restaurant_app/data/model/response/menus/menus_response.dart';
import 'package:restaurant_app/data/model/response/restaurant/restaurant_response.dart';
import 'package:restaurant_app/domain/entity/categories/categories_res_mapper.dart';
import 'package:restaurant_app/domain/entity/customer_reviews/customer_reviews.dart';
import 'package:restaurant_app/domain/entity/customer_reviews/customer_reviews_res_mapper.dart';
import 'package:restaurant_app/domain/entity/menus/menus_res_mapper.dart';
import 'package:restaurant_app/domain/entity/restaurants/restaurants.dart';

import '../categories/categories.dart';

class RestaurantResMapper {
  const RestaurantResMapper._();

  static Restaurants mapResponseToDomain(RestaurantResponse response) {
    List<Categories> listCategories = [];
    List<CustomerReviews> listCustomerReviews = [];
    response.categories?.forEach(
      (element) {
        listCategories.add(CategoriesResMapper.mapResponseToDomain(element));
      },
    );
    response.customerReviews?.forEach(
      (element) {
        listCustomerReviews
            .add(CustomerReviewsResMapper.mapResponseToDomain(element));
      },
    );
    return Restaurants(
        id: response.id ?? '',
        name: response.name ?? '',
        description: response.description ?? '',
        pictureId: response.pictureId ?? '',
        city: response.city ?? '',
        rating: response.rating ?? 0.0,
        menus: MenusResMapper.mapResponseToDomain(
            response.menus ?? MenusResponse()),
        categories: listCategories,
        customerReviews: listCustomerReviews);
  }
}
