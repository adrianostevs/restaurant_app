import 'package:restaurant_app/domain/entity/restaurants/restaurants.dart';
import 'package:restaurant_app/domain/repository/restaurant_repository.dart';
import 'package:restaurant_app/domain/usecase/get_detail_restaurant/get_detail_restaurant_usecase.dart';
import 'package:restaurant_app/domain/viewstate/view_state.dart';

class GetDetailRestaurantInteractor implements GetDetailRestaurantUsecase {
  final RestaurantRepository repository;

  GetDetailRestaurantInteractor(this.repository);

  @override
  Future<ViewState<Restaurants>> getDetail(String id) async {
    return repository.getDetail(id);
  }
}
