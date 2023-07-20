import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_review.freezed.dart';

@freezed
class AddReview with _$AddReview {
  factory AddReview({
    required String id,
    required String name,
    required String review,
  }) = _AddReview;
}
