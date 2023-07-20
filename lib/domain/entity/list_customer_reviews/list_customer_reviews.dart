import 'package:freezed_annotation/freezed_annotation.dart';

import '../customer_reviews/customer_reviews.dart';

part 'list_customer_reviews.freezed.dart';

@freezed
class ListCustomerReviews with _$ListCustomerReviews {
  factory ListCustomerReviews({
    List<CustomerReviews>? customerReviews,
  }) = _ListCustomerReviews;
}
