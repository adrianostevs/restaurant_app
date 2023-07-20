import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_reviews.freezed.dart';

@freezed
class CustomerReviews with _$CustomerReviews {
  factory CustomerReviews({
    String? name,
    String? review,
    String? date,
  }) = _CustomerReviews;
}
