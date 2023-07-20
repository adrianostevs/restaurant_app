import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_review_request.freezed.dart';
part 'add_review_request.g.dart';

@freezed
class AddReviewRequest with _$AddReviewRequest {
  factory AddReviewRequest({
    required String id,
    required String name,
    required String review,
  }) = _AddReviewRequest;

  factory AddReviewRequest.fromJson(Map<String, dynamic> json) =>
      _$AddReviewRequestFromJson(json);
}
