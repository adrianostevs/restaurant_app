import 'package:flutter/material.dart';
import 'package:restaurant_app/components/toast.dart';
import 'package:restaurant_app/data/datasource/review_datasource/review_datasource.dart';
import 'package:restaurant_app/domain/entity/add_review/add_review.dart';
import 'package:restaurant_app/domain/entity/customer_reviews/customer_reviews.dart';
import 'package:restaurant_app/domain/repository/review_repository.dart';
import 'package:restaurant_app/domain/usecase/add_review/add_review_usecase.dart';

import '../../data/service/remote_client.dart';

enum DetailState { loading, success, failed }

class DetailProvider extends ChangeNotifier {
  final RemoteClient remoteClient;
  final ReviewDatasource dataSource;
  final ReviewRepository reviewRepository;
  final AddReviewUsecase addReviewUsecase;

  DetailProvider({
    required this.remoteClient,
    required this.dataSource,
    required this.reviewRepository,
    required this.addReviewUsecase,
  });

  List<CustomerReviews> _listCustomerReviews = [];
  DetailState _state = DetailState.success;
  String _message = '';
  String get message => _message;
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
}
