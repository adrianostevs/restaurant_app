// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_customer_reviews_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListCustomerReviewsResponse _$$_ListCustomerReviewsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ListCustomerReviewsResponse(
      customerReviews: (json['customerReviews'] as List<dynamic>?)
          ?.map((e) =>
              CustomerReviewsResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ListCustomerReviewsResponseToJson(
        _$_ListCustomerReviewsResponse instance) =>
    <String, dynamic>{
      'customerReviews': instance.customerReviews,
    };
