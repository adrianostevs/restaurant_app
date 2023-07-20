import 'package:freezed_annotation/freezed_annotation.dart';

import '../restaurants/restaurants.dart';

part 'list_restaurants.freezed.dart';

@freezed
class ListRestaurants with _$ListRestaurants {
  factory ListRestaurants({
    List<Restaurants>? restaurant,
  }) = _ListRestaurants;
}
