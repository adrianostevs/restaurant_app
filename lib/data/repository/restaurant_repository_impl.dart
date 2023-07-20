import 'package:restaurant_app/data/datasource/restaurant_datasource/restaurant_datasource.dart';
import 'package:restaurant_app/data/model/response/restaurant/restaurant_response.dart';
import 'package:restaurant_app/domain/entity/list_restaurants/list_restaurants.dart';
import 'package:restaurant_app/domain/entity/list_restaurants/list_restaurants_res_mapper.dart';
import 'package:restaurant_app/domain/entity/restaurants/restaurants.dart';
import 'package:restaurant_app/domain/entity/restaurants/restaurants_res_mapper.dart';
import 'package:restaurant_app/domain/entity/search/search.dart';
import 'package:restaurant_app/domain/entity/search/search_req_mapper.dart';
import 'package:restaurant_app/domain/repository/restaurant_repository.dart';
import 'package:restaurant_app/domain/viewstate/view_state.dart';

class RestaurantRepositoryImpl implements RestaurantRepository {
  final RestaurantDataSource _dataSource;

  RestaurantRepositoryImpl(this._dataSource);

  @override
  Future<ViewState<Restaurants>> getDetail(String id) async {
    final response = await _dataSource.getDetailRestaurant(id);
    return response.when(success: (data) {
      return ViewState.success(
          data: RestaurantResMapper.mapResponseToDomain(
              data.restaurant ?? RestaurantResponse()));
    }, error: (error) {
      return ViewState.error(message: error.message);
    });
  }

  @override
  Future<ViewState<ListRestaurants>> getList() async {
    final response = await _dataSource.getListRestaurant();
    return response.when(success: (data) {
      return ViewState.success(
          data: ListRestaurantResMapper.mapResponseToDomain(data));
    }, error: (error) {
      return ViewState.error(message: error.message);
    });
  }

  @override
  Future<ViewState<ListRestaurants>> searchRestaurant(Search request) async {
    final response = await _dataSource
        .searchRestaurant(SearchReqMapper.mapDomainToRequest(request));
    return response.when(success: (data) {
      return ViewState.success(
          data: ListRestaurantResMapper.mapResponseToDomain(data));
    }, error: (error) {
      return ViewState.error(message: error.message);
    });
  }
}
