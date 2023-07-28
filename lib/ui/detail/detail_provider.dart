import 'package:flutter/material.dart';
import 'package:restaurant_app/components/toast.dart';
import 'package:restaurant_app/data/datasource/review_datasource/review_datasource.dart';
import 'package:restaurant_app/data/local/database/database_helper.dart';
import 'package:restaurant_app/domain/entity/add_review/add_review.dart';
import 'package:restaurant_app/domain/entity/customer_reviews/customer_reviews.dart';
import 'package:restaurant_app/domain/entity/restaurants/restaurants.dart';
import 'package:restaurant_app/domain/repository/review_repository.dart';
import 'package:restaurant_app/domain/usecase/add_review/add_review_usecase.dart';

import '../../data/service/remote_client.dart';

enum DetailState { loading, success, failed }

class DetailProvider extends ChangeNotifier {
  final RemoteClient remoteClient;
  final ReviewDatasource dataSource;
  final ReviewRepository reviewRepository;
  final AddReviewUsecase addReviewUsecase;
  final DatabaseHelper databaseHelper;
  final String id;

  DetailProvider(
      {required this.remoteClient,
      required this.dataSource,
      required this.reviewRepository,
      required this.addReviewUsecase,
      required this.databaseHelper,
      required this.id}) {
    isAlreadyFavorite();
  }

  List<CustomerReviews> _listCustomerReviews = [];
  DetailState _state = DetailState.success;
  Restaurants restaurant = Restaurants();
  bool _isFavorite = false;
  bool get isFavorite => _isFavorite;
  String _message = '';
  String get message => _message;
  Restaurants get restaurants => restaurant;
  List<CustomerReviews> get listCustomerReviews => _listCustomerReviews;
  DetailState get state => _state;

  Future<dynamic> addReview(AddReview request, BuildContext context) async {
    try {
      _state = DetailState.loading;
      notifyListeners();
      final listReviews = await addReviewUsecase.addReview(request);
      listReviews.whenOrNull(
        success: (data) {
          _state = DetailState.success;
          _listCustomerReviews = data.customerReviews ?? [];
          notifyListeners();
          return _listCustomerReviews;
        },
        error: (message) {
          _state = DetailState.failed;
          notifyListeners();
          ToastMessage.show(message);
          return _message = message;
        },
      );
    } catch (e) {
      _state = DetailState.failed;
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

  List<CustomerReviews> setReview(List<CustomerReviews> listReviews) {
    return _listCustomerReviews = listReviews;
  }

  Future<dynamic> addRemoveFavorite(bool isFavorite) async {
    try {
      if (isFavorite) {
        await databaseHelper.removeBookmark(restaurants.id ?? '');
        notifyListeners();
        ToastMessage.show('Berhasil Menghapus dari Favorite');
      } else {
        await databaseHelper.insertFavorite(restaurants);
        notifyListeners();
        ToastMessage.show('Berhasil Menambahkan ke Favorite');
      }
      isAlreadyFavorite();
    } catch (e) {
      print(e.toString());
      ToastMessage.show(e.toString());
    }
  }

  Future<dynamic> isAlreadyFavorite() async {
    final getFavorite = await databaseHelper.getFavoriteById(id);
    print('cek $getFavorite');
    _isFavorite = getFavorite.isNotEmpty;
    notifyListeners();
  }
}
