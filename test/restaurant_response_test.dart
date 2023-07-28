import 'package:flutter_test/flutter_test.dart';
import 'package:restaurant_app/data/model/response/restaurant/restaurant_response.dart';

void main() {
  test('Should parse JSON successfully', () {
    final jsonMap = {
      "id": "rqdv5juczeskfw1e867",
      "name": "Soto Makassar",
      "description": "lorem ipsum dolor",
      "pictureId": "14",
      "city": "Makassar",
      "address": "Jalan Buntu",
      "rating": 4.5,
    };

    final restaurant = RestaurantResponse.fromJson(jsonMap);

    expect(restaurant.id, "rqdv5juczeskfw1e867");
    expect(restaurant.name, "Soto Makassar");
    expect(restaurant.description, "lorem ipsum dolor");
    expect(restaurant.pictureId, "14");
    expect(restaurant.city, "Makassar");
    expect(restaurant.address, "Jalan Buntu");
    expect(restaurant.rating, 4.5);
  });
}
