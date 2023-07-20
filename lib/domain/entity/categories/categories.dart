import 'package:freezed_annotation/freezed_annotation.dart';

part 'categories.freezed.dart';

@freezed
class Categories with _$Categories {
  factory Categories({
    String? name,
  }) = _Categories;
}
