import 'package:restaurant_app/domain/entity/restaurants/restaurants.dart';
import 'package:restaurant_app/domain/viewstate/view_state.dart';

abstract class GetDetailRestaurantUsecase {
  Future<ViewState<Restaurants>> getDetail(String id);
}
