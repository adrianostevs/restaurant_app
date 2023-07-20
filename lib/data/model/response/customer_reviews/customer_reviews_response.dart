import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_reviews_response.g.dart';
part 'customer_reviews_response.freezed.dart';

@freezed
class CustomerReviewsResponse with _$CustomerReviewsResponse {
  factory CustomerReviewsResponse(
      {String? name, String? review, String? date}) = _CustomerReviewsResponse;

  factory CustomerReviewsResponse.fromJson(Map<String, dynamic> json) =>
      _$CustomerReviewsResponseFromJson(json);
}
