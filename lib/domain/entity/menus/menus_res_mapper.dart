import 'package:restaurant_app/data/model/response/menus/menus_response.dart';
import 'package:restaurant_app/domain/entity/categories/categories.dart';
import 'package:restaurant_app/domain/entity/categories/categories_res_mapper.dart';
import 'package:restaurant_app/domain/entity/menus/menus.dart';

class MenusResMapper {
  const MenusResMapper._();

  static Menus mapResponseToDomain(MenusResponse response) {
    List<Categories> listFoods = [];
    List<Categories> listDrinks = [];
    response.drinks?.forEach(
      (element) {
        listDrinks.add(CategoriesResMapper.mapResponseToDomain(element));
      },
    );
    response.foods?.forEach(
      (element) {
        listFoods.add(CategoriesResMapper.mapResponseToDomain(element));
      },
    );
    return Menus(
      foods: listFoods,
      drinks: listDrinks,
    );
  }
}
