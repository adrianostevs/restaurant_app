import 'package:restaurant_app/data/model/response/categories/categories_response.dart';
import 'package:restaurant_app/domain/entity/categories/categories.dart';
import 'package:restaurant_app/domain/entity/categories/categories_res_mapper.dart';

class ListFoodsMapper {
  const ListFoodsMapper._();

  static List<Categories> mapResponseToDomain(
      List<CategoriesResponse> foodsResponse) {
    List<Categories> listCategories = [];
    foodsResponse.forEach((element) {
      listCategories.add(CategoriesResMapper.mapResponseToDomain(element));
    });
    return listCategories;
  }
}
