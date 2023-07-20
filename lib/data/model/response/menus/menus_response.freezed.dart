// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'menus_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MenusResponse _$MenusResponseFromJson(Map<String, dynamic> json) {
  return _MenusResponse.fromJson(json);
}

/// @nodoc
mixin _$MenusResponse {
  List<CategoriesResponse>? get foods => throw _privateConstructorUsedError;
  List<CategoriesResponse>? get drinks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MenusResponseCopyWith<MenusResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenusResponseCopyWith<$Res> {
  factory $MenusResponseCopyWith(
          MenusResponse value, $Res Function(MenusResponse) then) =
      _$MenusResponseCopyWithImpl<$Res, MenusResponse>;
  @useResult
  $Res call(
      {List<CategoriesResponse>? foods, List<CategoriesResponse>? drinks});
}

/// @nodoc
class _$MenusResponseCopyWithImpl<$Res, $Val extends MenusResponse>
    implements $MenusResponseCopyWith<$Res> {
  _$MenusResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foods = freezed,
    Object? drinks = freezed,
  }) {
    return _then(_value.copyWith(
      foods: freezed == foods
          ? _value.foods
          : foods // ignore: cast_nullable_to_non_nullable
              as List<CategoriesResponse>?,
      drinks: freezed == drinks
          ? _value.drinks
          : drinks // ignore: cast_nullable_to_non_nullable
              as List<CategoriesResponse>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MenusResponseCopyWith<$Res>
    implements $MenusResponseCopyWith<$Res> {
  factory _$$_MenusResponseCopyWith(
          _$_MenusResponse value, $Res Function(_$_MenusResponse) then) =
      __$$_MenusResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CategoriesResponse>? foods, List<CategoriesResponse>? drinks});
}

/// @nodoc
class __$$_MenusResponseCopyWithImpl<$Res>
    extends _$MenusResponseCopyWithImpl<$Res, _$_MenusResponse>
    implements _$$_MenusResponseCopyWith<$Res> {
  __$$_MenusResponseCopyWithImpl(
      _$_MenusResponse _value, $Res Function(_$_MenusResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foods = freezed,
    Object? drinks = freezed,
  }) {
    return _then(_$_MenusResponse(
      foods: freezed == foods
          ? _value._foods
          : foods // ignore: cast_nullable_to_non_nullable
              as List<CategoriesResponse>?,
      drinks: freezed == drinks
          ? _value._drinks
          : drinks // ignore: cast_nullable_to_non_nullable
              as List<CategoriesResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MenusResponse implements _MenusResponse {
  _$_MenusResponse(
      {final List<CategoriesResponse>? foods,
      final List<CategoriesResponse>? drinks})
      : _foods = foods,
        _drinks = drinks;

  factory _$_MenusResponse.fromJson(Map<String, dynamic> json) =>
      _$$_MenusResponseFromJson(json);

  final List<CategoriesResponse>? _foods;
  @override
  List<CategoriesResponse>? get foods {
    final value = _foods;
    if (value == null) return null;
    if (_foods is EqualUnmodifiableListView) return _foods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CategoriesResponse>? _drinks;
  @override
  List<CategoriesResponse>? get drinks {
    final value = _drinks;
    if (value == null) return null;
    if (_drinks is EqualUnmodifiableListView) return _drinks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MenusResponse(foods: $foods, drinks: $drinks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MenusResponse &&
            const DeepCollectionEquality().equals(other._foods, _foods) &&
            const DeepCollectionEquality().equals(other._drinks, _drinks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_foods),
      const DeepCollectionEquality().hash(_drinks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MenusResponseCopyWith<_$_MenusResponse> get copyWith =>
      __$$_MenusResponseCopyWithImpl<_$_MenusResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MenusResponseToJson(
      this,
    );
  }
}

abstract class _MenusResponse implements MenusResponse {
  factory _MenusResponse(
      {final List<CategoriesResponse>? foods,
      final List<CategoriesResponse>? drinks}) = _$_MenusResponse;

  factory _MenusResponse.fromJson(Map<String, dynamic> json) =
      _$_MenusResponse.fromJson;

  @override
  List<CategoriesResponse>? get foods;
  @override
  List<CategoriesResponse>? get drinks;
  @override
  @JsonKey(ignore: true)
  _$$_MenusResponseCopyWith<_$_MenusResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
