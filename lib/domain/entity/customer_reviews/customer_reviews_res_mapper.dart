import 'package:restaurant_app/data/model/response/customer_reviews/customer_reviews_response.dart';
import 'package:restaurant_app/domain/entity/customer_reviews/customer_reviews.dart';

class CustomerReviewsResMapper {
  const CustomerReviewsResMapper._();

  static CustomerReviews mapResponseToDomain(CustomerReviewsResponse response) {
    return CustomerReviews(
      name: response.name,
      review: response.review,
      date: response.date,
    );
  }

  static CustomerReviewsResponse mapDomainToJson(CustomerReviews response) {
    return CustomerReviewsResponse(
      name: response.name,
      review: response.review,
      date: response.date,
    );
  }
}
