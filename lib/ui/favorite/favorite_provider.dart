import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_app/domain/entity/restaurants/restaurants.dart';

import '../../components/toast.dart';
import '../../data/datasource/restaurant_datasource/restaurant_datasource.dart';
import '../../data/local/database/database_helper.dart';
import '../../data/service/remote_client.dart';
import '../../domain/repository/restaurant_repository.dart';
import '../../domain/usecase/get_detail_restaurant/get_detail_restaurant_usecase.dart';
import '../detail/detail_screen.dart';

enum FavoriteState { hasData, noData, loading, success, failed }

class FavoriteProvider extends ChangeNotifier {
  final RemoteClient remoteClient;
  final RestaurantDataSource dataSource;
  final RestaurantRepository restaurantRepository;
  final GetDetailRestaurantUsecase getDetailRestaurantUsecase;
  final DatabaseHelper databaseHelper;

  FavoriteProvider(
      {required this.remoteClient,
      required this.dataSource,
      required this.restaurantRepository,
      required this.getDetailRestaurantUsecase,
      required this.databaseHelper}) {
    getListFavorite();
  }

  List<Restaurants> _listRestaurants = [];
  String _message = '';
  String get message => _message;
  List<Restaurants> get listRestaurants => _listRestaurants;
  FavoriteState _state = FavoriteState.hasData;
  FavoriteState get state => _state;

  Future<dynamic> getListFavorite() async {
    try {
      final getListFavorite = await databaseHelper.getListFavorites();
      _listRestaurants = getListFavorite ?? [];
      if (_listRestaurants.isEmpty) {
        _state = FavoriteState.noData;
      } else {
        _state = FavoriteState.hasData;
      }
      notifyListeners();
    } catch (e) {
      print(e.toString());
    }
  }

  Future<void> getDetailRestaurant(String id, BuildContext context) async {
    try {
      _state = FavoriteState.loading;
      notifyListeners();
      final detailRestaurant = await getDetailRestaurantUsecase.getDetail(id);
      detailRestaurant.whenOrNull(
        success: (data) {
          _state = FavoriteState.success;
          notifyListeners();
          Navigator.pushNamed(context, DetailScreen.routeName, arguments: data)
              .then((value) =>
                  Provider.of<FavoriteProvider>(context, listen: false)
                      .getListFavorite());
        },
        error: (message) {
          _state = FavoriteState.failed;
          notifyListeners();
          _message = message;
        },
      );
    } catch (e) {
      _state = FavoriteState.failed;
      print(e.toString());
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
}
