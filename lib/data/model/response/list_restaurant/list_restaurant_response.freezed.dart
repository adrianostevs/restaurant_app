// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_restaurant_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListRestaurantResponse _$ListRestaurantResponseFromJson(
    Map<String, dynamic> json) {
  return _ListRestaurantResponse.fromJson(json);
}

/// @nodoc
mixin _$ListRestaurantResponse {
  bool? get error => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;
  List<RestaurantResponse>? get restaurants =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListRestaurantResponseCopyWith<ListRestaurantResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListRestaurantResponseCopyWith<$Res> {
  factory $ListRestaurantResponseCopyWith(ListRestaurantResponse value,
          $Res Function(ListRestaurantResponse) then) =
      _$ListRestaurantResponseCopyWithImpl<$Res, ListRestaurantResponse>;
  @useResult
  $Res call(
      {bool? error,
      String? message,
      int? count,
      List<RestaurantResponse>? restaurants});
}

/// @nodoc
class _$ListRestaurantResponseCopyWithImpl<$Res,
        $Val extends ListRestaurantResponse>
    implements $ListRestaurantResponseCopyWith<$Res> {
  _$ListRestaurantResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? message = freezed,
    Object? count = freezed,
    Object? restaurants = freezed,
  }) {
    return _then(_value.copyWith(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      restaurants: freezed == restaurants
          ? _value.restaurants
          : restaurants // ignore: cast_nullable_to_non_nullable
              as List<RestaurantResponse>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ListRestaurantResponseCopyWith<$Res>
    implements $ListRestaurantResponseCopyWith<$Res> {
  factory _$$_ListRestaurantResponseCopyWith(_$_ListRestaurantResponse value,
          $Res Function(_$_ListRestaurantResponse) then) =
      __$$_ListRestaurantResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? error,
      String? message,
      int? count,
      List<RestaurantResponse>? restaurants});
}

/// @nodoc
class __$$_ListRestaurantResponseCopyWithImpl<$Res>
    extends _$ListRestaurantResponseCopyWithImpl<$Res,
        _$_ListRestaurantResponse>
    implements _$$_ListRestaurantResponseCopyWith<$Res> {
  __$$_ListRestaurantResponseCopyWithImpl(_$_ListRestaurantResponse _value,
      $Res Function(_$_ListRestaurantResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? message = freezed,
    Object? count = freezed,
    Object? restaurants = freezed,
  }) {
    return _then(_$_ListRestaurantResponse(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      restaurants: freezed == restaurants
          ? _value._restaurants
          : restaurants // ignore: cast_nullable_to_non_nullable
              as List<RestaurantResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListRestaurantResponse implements _ListRestaurantResponse {
  _$_ListRestaurantResponse(
      {this.error,
      this.message,
      this.count,
      final List<RestaurantResponse>? restaurants})
      : _restaurants = restaurants;

  factory _$_ListRestaurantResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ListRestaurantResponseFromJson(json);

  @override
  final bool? error;
  @override
  final String? message;
  @override
  final int? count;
  final List<RestaurantResponse>? _restaurants;
  @override
  List<RestaurantResponse>? get restaurants {
    final value = _restaurants;
    if (value == null) return null;
    if (_restaurants is EqualUnmodifiableListView) return _restaurants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ListRestaurantResponse(error: $error, message: $message, count: $count, restaurants: $restaurants)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListRestaurantResponse &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality()
                .equals(other._restaurants, _restaurants));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, error, message, count,
      const DeepCollectionEquality().hash(_restaurants));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListRestaurantResponseCopyWith<_$_ListRestaurantResponse> get copyWith =>
      __$$_ListRestaurantResponseCopyWithImpl<_$_ListRestaurantResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListRestaurantResponseToJson(
      this,
    );
  }
}

abstract class _ListRestaurantResponse implements ListRestaurantResponse {
  factory _ListRestaurantResponse(
      {final bool? error,
      final String? message,
      final int? count,
      final List<RestaurantResponse>? restaurants}) = _$_ListRestaurantResponse;

  factory _ListRestaurantResponse.fromJson(Map<String, dynamic> json) =
      _$_ListRestaurantResponse.fromJson;

  @override
  bool? get error;
  @override
  String? get message;
  @override
  int? get count;
  @override
  List<RestaurantResponse>? get restaurants;
  @override
  @JsonKey(ignore: true)
  _$$_ListRestaurantResponseCopyWith<_$_ListRestaurantResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
