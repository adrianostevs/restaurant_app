import 'package:restaurant_app/data/model/request/search/search_request.dart';
import 'package:restaurant_app/data/model/response/detail_restaurant/detail_restaurant_response.dart';
import 'package:restaurant_app/data/model/response/list_restaurant/list_restaurant_response.dart';
import 'package:restaurant_app/data/service/remote_source.dart';

abstract class RestaurantDataSource {
  Future<RemoteSource<ListRestaurantResponse>> getListRestaurant();
  Future<RemoteSource<DetailRestaurantResponse>> getDetailRestaurant(String id);
  Future<RemoteSource<ListRestaurantResponse>> searchRestaurant(
      SearchRequest request);
}
