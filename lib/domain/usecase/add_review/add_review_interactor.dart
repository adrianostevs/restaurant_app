import 'package:restaurant_app/domain/entity/add_review/add_review.dart';
import 'package:restaurant_app/domain/entity/list_customer_reviews/list_customer_reviews.dart';
import 'package:restaurant_app/domain/repository/review_repository.dart';
import 'package:restaurant_app/domain/usecase/add_review/add_review_usecase.dart';
import 'package:restaurant_app/domain/viewstate/view_state.dart';

class AddReviewInteractor implements AddReviewUsecase {
  final ReviewRepository repository;

  AddReviewInteractor(this.repository);
  @override
  Future<ViewState<ListCustomerReviews>> addReview(AddReview request) async {
    return repository.addReview(request);
  }
}
