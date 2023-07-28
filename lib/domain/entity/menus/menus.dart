import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_app/domain/entity/categories/categories.dart';

part 'menus.freezed.dart';
part 'menus.g.dart';

@freezed
class Menus with _$Menus {
  factory Menus({
    List<Categories>? foods,
    List<Categories>? drinks,
  }) = _Menus;

  factory Menus.fromJson(Map<String, dynamic> json) => _$MenusFromJson(json);
}
