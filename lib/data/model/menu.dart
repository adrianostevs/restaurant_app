import 'package:restaurant_app/data/model/list_menu.dart';

class Menu {
  final List<ListMenu> foods;
  final List<ListMenu> drinks;

  Menu({required this.foods, required this.drinks});

  factory Menu.fromJson(Map<String, dynamic> json) => Menu(
        foods:
            List<ListMenu>.from(json["foods"].map((x) => ListMenu.fromJson(x))),
        drinks: List<ListMenu>.from(
            json["drinks"].map((x) => ListMenu.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "foods": List<dynamic>.from(foods.map((x) => x.toJson())),
        "drinks": List<dynamic>.from(drinks.map((x) => x.toJson())),
      };
}
