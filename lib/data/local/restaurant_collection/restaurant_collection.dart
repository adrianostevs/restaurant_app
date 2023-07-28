class RestaurantCollection {
  String? id;
  String? name;
  String? pictureId;
  String? city;
  double? rating;

  RestaurantCollection(
      {required this.id,
      required this.name,
      required this.pictureId,
      required this.city,
      required this.rating});

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "pictureId": pictureId,
        "city": city,
        "rating": rating
      };
}
