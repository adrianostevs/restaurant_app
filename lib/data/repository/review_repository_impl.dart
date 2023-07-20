import 'package:restaurant_app/data/datasource/review_datasource/review_datasource.dart';
import 'package:restaurant_app/domain/entity/add_review/add_review.dart';
import 'package:restaurant_app/domain/entity/add_review/add_review_req_mapper.dart';
import 'package:restaurant_app/domain/entity/list_customer_reviews/list_customer_reviews.dart';
import 'package:restaurant_app/domain/entity/list_customer_reviews/list_customer_reviews_res_mapper.dart';
import 'package:restaurant_app/domain/repository/review_repository.dart';
import 'package:restaurant_app/domain/viewstate/view_state.dart';

class ReviewRepositoryImpl implements ReviewRepository {
  final ReviewDatasource _reviewDatasource;

  ReviewRepositoryImpl(this._reviewDatasource);

  @override
  Future<ViewState<ListCustomerReviews>> addReview(AddReview request) async {
    final response = await _reviewDatasource
        .addReview(AddReviewReqMapper.mapDomainToResponse(request));
    return response.when(success: (data) {
      return ViewState.success(
          data: ListCustomerReviewsResMapper.mapResponseToDomain(data));
    }, error: (error) {
      return ViewState.error(message: error.message);
    });
  }
}
