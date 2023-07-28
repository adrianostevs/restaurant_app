import 'package:flutter/material.dart';
import 'package:restaurant_app/data/datasource/restaurant_datasource/restaurant_datasource.dart';
import 'package:restaurant_app/data/service/remote_client.dart';
import 'package:restaurant_app/domain/entity/list_restaurants/list_restaurants.dart';
import 'package:restaurant_app/domain/entity/search/search.dart';
import 'package:restaurant_app/domain/repository/restaurant_repository.dart';
import 'package:restaurant_app/domain/usecase/get_detail_restaurant/get_detail_restaurant_usecase.dart';
import 'package:restaurant_app/domain/usecase/get_list_restaurant/get_list_restaurant_usecase.dart';
import 'package:restaurant_app/domain/usecase/search_restaurant/search_restaurant_usecase.dart';
import 'package:restaurant_app/ui/detail/detail_screen.dart';

import '../../components/toast.dart';

enum HomeState { loading, success, failed }

class HomeProvider extends ChangeNotifier {
  final RemoteClient remoteClient;
  final RestaurantDataSource dataSource;
  final RestaurantRepository restaurantRepository;
  final GetListRestaurantUsecase getListRestaurantUsecase;
  final GetDetailRestaurantUsecase getDetailRestaurantUsecase;
  final SearchRestaurantUsecase searchRestaurantUsecase;

  HomeProvider(
      {required this.remoteClient,
      required this.dataSource,
      required this.restaurantRepository,
      required this.getListRestaurantUsecase,
      required this.getDetailRestaurantUsecase,
      required this.searchRestaurantUsecase}) {
    getListRestaurant();
  }

  ListRestaurants _listRestaurants = ListRestaurants();
  HomeState _state = HomeState.success;
  String _message = '';
  String get message => _message;
  ListRestaurants get listRestaurants => _listRestaurants;
  HomeState get state => _state;
  Search searchRequest = Search();

  Future<dynamic> getListRestaurant() async {
    try {
      _state = HomeState.loading;
      notifyListeners();
      final listRestaurants = await getListRestaurantUsecase.getList();
      listRestaurants.whenOrNull(
        success: (data) {
          _state = HomeState.success;
          notifyListeners();
          return _listRestaurants = data;
        },
        error: (message) {
          _state = HomeState.failed;
          notifyListeners();
          return _message = message;
        },
      );
    } catch (e) {
      _state = HomeState.failed;
      notifyListeners();
      if (e.toString().contains('SocketException')) {
        ToastMessage.show('No Connection');
        return _message = 'No Connection';
      } else {
        ToastMessage.show(e.toString());
        return _message = e.toString();
      }
    }
  }

  Future<void> getDetailRestaurant(String id, BuildContext context) async {
    try {
      _state = HomeState.loading;
      notifyListeners();
      final detailRestaurant = await getDetailRestaurantUsecase.getDetail(id);
      detailRestaurant.whenOrNull(
        success: (data) {
          _state = HomeState.success;
          notifyListeners();
          Navigator.pushNamed(context, DetailScreen.routeName, arguments: data);
        },
        error: (message) {
          _state = HomeState.failed;
          notifyListeners();
          _message = message;
        },
      );
    } catch (e) {
      _state = HomeState.failed;
      notifyListeners();
      if (e.toString().contains('SocketException')) {
        ToastMessage.show('No Connection');
        _message = 'No Connection';
      } else {
        ToastMessage.show(e.toString());
        _message = e.toString();
      }
    }
  }

  Future<dynamic> searchRestaurant(String search) async {
    try {
      _state = HomeState.loading;
      notifyListeners();
      final searchRestaurant = await searchRestaurantUsecase
          .searchRestaurant(searchRequest.copyWith(q: search));
      searchRestaurant.whenOrNull(
        success: (data) {
          _state = HomeState.success;
          notifyListeners();
          return _listRestaurants = data;
        },
        error: (message) {
          _state = HomeState.failed;
          notifyListeners();
          return _message = message;
        },
      );
    } catch (e) {
      _state = HomeState.failed;
      notifyListeners();
      if (e.toString().contains('SocketException')) {
        ToastMessage.show('No Connection');
        return _message = 'No Connection';
      } else {
        ToastMessage.show(e.toString());
        return _message = e.toString();
      }
    }
  }
}
