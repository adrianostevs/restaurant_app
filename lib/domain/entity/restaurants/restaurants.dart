import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_app/domain/entity/menus/menus.dart';

import '../categories/categories.dart';
import '../customer_reviews/customer_reviews.dart';

part 'restaurants.freezed.dart';

@freezed
class Restaurants with _$Restaurants {
  factory Restaurants({
    String? id,
    String? name,
    String? description,
    String? city,
    String? address,
    String? pictureId,
    double? rating,
    Menus? menus,
    List<Categories>? categories,
    List<CustomerReviews>? customerReviews,
  }) = _Restaurants;
}
