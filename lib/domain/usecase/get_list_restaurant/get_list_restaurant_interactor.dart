import 'package:restaurant_app/domain/entity/list_restaurants/list_restaurants.dart';
import 'package:restaurant_app/domain/repository/restaurant_repository.dart';
import 'package:restaurant_app/domain/usecase/get_list_restaurant/get_list_restaurant_usecase.dart';
import 'package:restaurant_app/domain/viewstate/view_state.dart';

class GetListRestaurantInteractor implements GetListRestaurantUsecase {
  final RestaurantRepository repository;

  GetListRestaurantInteractor(this.repository);

  @override
  Future<ViewState<ListRestaurants>> getList() async {
    return repository.getList();
  }
}
