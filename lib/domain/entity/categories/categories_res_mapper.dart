import 'package:restaurant_app/data/model/response/categories/categories_response.dart';
import 'package:restaurant_app/domain/entity/categories/categories.dart';

class CategoriesResMapper {
  const CategoriesResMapper._();

  static Categories mapResponseToDomain(CategoriesResponse response) {
    return Categories(name: response.name);
  }

  static CategoriesResponse mapDomainToJson(Categories response) {
    return CategoriesResponse(name: response.name);
  }
}
