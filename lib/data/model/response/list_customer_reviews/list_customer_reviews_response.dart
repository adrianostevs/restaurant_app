import 'package:freezed_annotation/freezed_annotation.dart';

import '../customer_reviews/customer_reviews_response.dart';

part 'list_customer_reviews_response.g.dart';
part 'list_customer_reviews_response.freezed.dart';

@freezed
class ListCustomerReviewsResponse with _$ListCustomerReviewsResponse {
  factory ListCustomerReviewsResponse({
    List<CustomerReviewsResponse>? customerReviews,
  }) = _ListCustomerReviewsResponse;

  factory ListCustomerReviewsResponse.fromJson(Map<String, dynamic> json) =>
      _$ListCustomerReviewsResponseFromJson(json);
}
