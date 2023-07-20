import 'package:restaurant_app/domain/entity/add_review/add_review.dart';

import '../../../data/model/request/add_review/add_review_request.dart';

class AddReviewReqMapper {
  const AddReviewReqMapper._();

  static AddReviewRequest mapDomainToResponse(AddReview request) {
    return AddReviewRequest(
      id: request.id,
      name: request.name,
      review: request.review,
    );
  }
}
