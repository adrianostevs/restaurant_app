import 'package:restaurant_app/data/model/request/add_review/add_review_request.dart';
import 'package:restaurant_app/data/model/response/list_customer_reviews/list_customer_reviews_response.dart';
import 'package:restaurant_app/data/service/remote_source.dart';

abstract class ReviewDatasource {
  Future<RemoteSource<ListCustomerReviewsResponse>> addReview(
      AddReviewRequest request);
}
