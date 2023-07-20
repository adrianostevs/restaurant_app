import 'package:dio/dio.dart';
import 'package:restaurant_app/data/datasource/restaurant_datasource/restaurant_datasource.dart';
import 'package:restaurant_app/data/model/request/search/search_request.dart';
import 'package:restaurant_app/data/model/response/detail_restaurant/detail_restaurant_response.dart';
import 'package:restaurant_app/data/model/response/list_restaurant/list_restaurant_response.dart';
import 'package:restaurant_app/data/service/api_constants.dart';
import 'package:restaurant_app/data/service/remote_client.dart';
import 'package:restaurant_app/data/service/remote_source.dart';

class RestaurantDatasourceImpl implements RestaurantDataSource {
  final RemoteClient _client;

  RestaurantDatasourceImpl(this._client);

  @override
  Future<RemoteSource<DetailRestaurantResponse>> getDetailRestaurant(
      String id) async {
    final url = ApiConstants.DETAIL_RESTAURANT.replaceAll("{id}", id);
    final response = await _client.get(url, null);
    return response.when(success: (data) {
      final Response<dynamic> response = data;
      final detailRestaurant = DetailRestaurantResponse.fromJson(response.data);
      return RemoteSource.success(data: detailRestaurant);
    }, error: (error) {
      return RemoteSource.error(error: error);
    });
  }

  @override
  Future<RemoteSource<ListRestaurantResponse>> getListRestaurant() async {
    final response = await _client.get(ApiConstants.LIST_RESTAURANT, null);
    return response.when(success: (data) {
      final Response<dynamic> response = data;
      final listRestaurants = ListRestaurantResponse.fromJson(response.data);
      return RemoteSource.success(data: listRestaurants);
    }, error: (error) {
      return RemoteSource.error(error: error);
    });
  }

  @override
  Future<RemoteSource<ListRestaurantResponse>> searchRestaurant(
      SearchRequest request) async {
    final response =
        await _client.get(ApiConstants.SEARCH_RESTAURANT, request.toJson());
    return response.when(success: (data) {
      final Response<dynamic> response = data;
      final listRestaurants = ListRestaurantResponse.fromJson(response.data);
      return RemoteSource.success(data: listRestaurants);
    }, error: (error) {
      return RemoteSource.error(error: error);
    });
  }
}
