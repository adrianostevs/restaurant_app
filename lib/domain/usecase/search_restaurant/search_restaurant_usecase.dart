import 'package:restaurant_app/domain/entity/list_restaurants/list_restaurants.dart';
import 'package:restaurant_app/domain/entity/search/search.dart';
import 'package:restaurant_app/domain/viewstate/view_state.dart';

abstract class SearchRestaurantUsecase {
  Future<ViewState<ListRestaurants>> searchRestaurant(Search request);
}
