import 'package:restaurant_app/domain/entity/list_restaurants/list_restaurants.dart';
import 'package:restaurant_app/domain/entity/search/search.dart';
import 'package:restaurant_app/domain/repository/restaurant_repository.dart';
import 'package:restaurant_app/domain/usecase/search_restaurant/search_restaurant_usecase.dart';
import 'package:restaurant_app/domain/viewstate/view_state.dart';

class SearchRestaurantInteractor implements SearchRestaurantUsecase {
  final RestaurantRepository repository;
  SearchRestaurantInteractor(this.repository);
  @override
  Future<ViewState<ListRestaurants>> searchRestaurant(Search request) async {
    return repository.searchRestaurant(request);
  }
}
