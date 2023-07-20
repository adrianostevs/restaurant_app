import 'package:restaurant_app/domain/entity/add_review/add_review.dart';
import 'package:restaurant_app/domain/entity/list_customer_reviews/list_customer_reviews.dart';
import 'package:restaurant_app/domain/viewstate/view_state.dart';

abstract class AddReviewUsecase {
  Future<ViewState<ListCustomerReviews>> addReview(AddReview request);
}
