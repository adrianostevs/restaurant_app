import 'package:dio/dio.dart';
import 'package:restaurant_app/data/datasource/review_datasource/review_datasource.dart';
import 'package:restaurant_app/data/model/request/add_review/add_review_request.dart';
import 'package:restaurant_app/data/model/response/list_customer_reviews/list_customer_reviews_response.dart';
import 'package:restaurant_app/data/service/remote_client.dart';
import 'package:restaurant_app/data/service/remote_source.dart';

import '../../service/api_constants.dart';

class ReviewDatasourceImpl implements ReviewDatasource {
  final RemoteClient _client;

  ReviewDatasourceImpl(this._client);

  @override
  Future<RemoteSource<ListCustomerReviewsResponse>> addReview(
      AddReviewRequest request) async {
    final response =
        await _client.post(ApiConstants.ADD_REVIEW, request.toJson());
    return response.when(success: (data) {
      final Response<dynamic> response = data;
      final addReview = ListCustomerReviewsResponse.fromJson(response.data);
      return RemoteSource.success(data: addReview);
    }, error: (error) {
      return RemoteSource.error(error: error);
    });
  }
}
