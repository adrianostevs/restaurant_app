import 'package:restaurant_app/data/model/restaurant.dart';

class ListRestaurant {
  final List<Restaurant> listRestaurant;

  ListRestaurant({required this.listRestaurant});

  factory ListRestaurant.fromJson(Map<String, dynamic> listRestauran) =>
      ListRestaurant(
        listRestaurant: List<Restaurant>.from(
            listRestauran["restaurants"].map((x) => Restaurant.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "restaurants":
            List<dynamic>.from(listRestaurant.map((x) => x.toJson())),
      };
}
