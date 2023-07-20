import 'package:restaurant_app/data/model/response/list_customer_reviews/list_customer_reviews_response.dart';
import 'package:restaurant_app/domain/entity/customer_reviews/customer_reviews.dart';
import 'package:restaurant_app/domain/entity/customer_reviews/customer_reviews_res_mapper.dart';
import 'package:restaurant_app/domain/entity/list_customer_reviews/list_customer_reviews.dart';

class ListCustomerReviewsResMapper {
  const ListCustomerReviewsResMapper._();

  static ListCustomerReviews mapResponseToDomain(
      ListCustomerReviewsResponse response) {
    List<CustomerReviews> listReviews = [];
    response.customerReviews?.forEach(
      (element) {
        listReviews.add(CustomerReviewsResMapper.mapResponseToDomain(element));
      },
    );
    return ListCustomerReviews(customerReviews: listReviews);
  }
}
