// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_categories_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListCategoriesResponse _$ListCategoriesResponseFromJson(
    Map<String, dynamic> json) {
  return _ListCategoriesResponse.fromJson(json);
}

/// @nodoc
mixin _$ListCategoriesResponse {
  List<CategoriesResponse>? get categories =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListCategoriesResponseCopyWith<ListCategoriesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListCategoriesResponseCopyWith<$Res> {
  factory $ListCategoriesResponseCopyWith(ListCategoriesResponse value,
          $Res Function(ListCategoriesResponse) then) =
      _$ListCategoriesResponseCopyWithImpl<$Res, ListCategoriesResponse>;
  @useResult
  $Res call({List<CategoriesResponse>? categories});
}

/// @nodoc
class _$ListCategoriesResponseCopyWithImpl<$Res,
        $Val extends ListCategoriesResponse>
    implements $ListCategoriesResponseCopyWith<$Res> {
  _$ListCategoriesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = freezed,
  }) {
    return _then(_value.copyWith(
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoriesResponse>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ListCategoriesResponseCopyWith<$Res>
    implements $ListCategoriesResponseCopyWith<$Res> {
  factory _$$_ListCategoriesResponseCopyWith(_$_ListCategoriesResponse value,
          $Res Function(_$_ListCategoriesResponse) then) =
      __$$_ListCategoriesResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CategoriesResponse>? categories});
}

/// @nodoc
class __$$_ListCategoriesResponseCopyWithImpl<$Res>
    extends _$ListCategoriesResponseCopyWithImpl<$Res,
        _$_ListCategoriesResponse>
    implements _$$_ListCategoriesResponseCopyWith<$Res> {
  __$$_ListCategoriesResponseCopyWithImpl(_$_ListCategoriesResponse _value,
      $Res Function(_$_ListCategoriesResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = freezed,
  }) {
    return _then(_$_ListCategoriesResponse(
      categories: freezed == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoriesResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListCategoriesResponse implements _ListCategoriesResponse {
  _$_ListCategoriesResponse({final List<CategoriesResponse>? categories})
      : _categories = categories;

  factory _$_ListCategoriesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ListCategoriesResponseFromJson(json);

  final List<CategoriesResponse>? _categories;
  @override
  List<CategoriesResponse>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ListCategoriesResponse(categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListCategoriesResponse &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListCategoriesResponseCopyWith<_$_ListCategoriesResponse> get copyWith =>
      __$$_ListCategoriesResponseCopyWithImpl<_$_ListCategoriesResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListCategoriesResponseToJson(
      this,
    );
  }
}

abstract class _ListCategoriesResponse implements ListCategoriesResponse {
  factory _ListCategoriesResponse(
      {final List<CategoriesResponse>? categories}) = _$_ListCategoriesResponse;

  factory _ListCategoriesResponse.fromJson(Map<String, dynamic> json) =
      _$_ListCategoriesResponse.fromJson;

  @override
  List<CategoriesResponse>? get categories;
  @override
  @JsonKey(ignore: true)
  _$$_ListCategoriesResponseCopyWith<_$_ListCategoriesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
