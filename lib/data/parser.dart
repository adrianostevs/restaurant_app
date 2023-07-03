import 'dart:convert';

import 'package:restaurant_app/data/model/list_restaurant.dart';

ListRestaurant listRestaurantFromJson(String str) {
  try {
    return ListRestaurant.fromJson(json.decode(str));
  } catch (e) {
    print(e);
    return ListRestaurant.fromJson(jsonDecode(str));
  }
}

String listRestaurantToJson(ListRestaurant data) => json.encode(data.toJson());
