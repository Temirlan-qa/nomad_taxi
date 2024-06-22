// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'searched_order_address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchedOrderAddressEntity _$SearchedOrderAddressEntityFromJson(
    Map<String, dynamic> json) {
  return _SearchedOrderAddressEntity.fromJson(json);
}

/// @nodoc
mixin _$SearchedOrderAddressEntity {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "town")
  String? get town => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "lat")
  double? get lat => throw _privateConstructorUsedError;
  @JsonKey(name: "lng")
  double? get lng => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchedOrderAddressEntityCopyWith<SearchedOrderAddressEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchedOrderAddressEntityCopyWith<$Res> {
  factory $SearchedOrderAddressEntityCopyWith(SearchedOrderAddressEntity value,
          $Res Function(SearchedOrderAddressEntity) then) =
      _$SearchedOrderAddressEntityCopyWithImpl<$Res,
          SearchedOrderAddressEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "town") String? town,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "lat") double? lat,
      @JsonKey(name: "lng") double? lng});
}

/// @nodoc
class _$SearchedOrderAddressEntityCopyWithImpl<$Res,
        $Val extends SearchedOrderAddressEntity>
    implements $SearchedOrderAddressEntityCopyWith<$Res> {
  _$SearchedOrderAddressEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? town = freezed,
    Object? title = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      town: freezed == town
          ? _value.town
          : town // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchedOrderAddressEntityImplCopyWith<$Res>
    implements $SearchedOrderAddressEntityCopyWith<$Res> {
  factory _$$SearchedOrderAddressEntityImplCopyWith(
          _$SearchedOrderAddressEntityImpl value,
          $Res Function(_$SearchedOrderAddressEntityImpl) then) =
      __$$SearchedOrderAddressEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "town") String? town,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "lat") double? lat,
      @JsonKey(name: "lng") double? lng});
}

/// @nodoc
class __$$SearchedOrderAddressEntityImplCopyWithImpl<$Res>
    extends _$SearchedOrderAddressEntityCopyWithImpl<$Res,
        _$SearchedOrderAddressEntityImpl>
    implements _$$SearchedOrderAddressEntityImplCopyWith<$Res> {
  __$$SearchedOrderAddressEntityImplCopyWithImpl(
      _$SearchedOrderAddressEntityImpl _value,
      $Res Function(_$SearchedOrderAddressEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? town = freezed,
    Object? title = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
  }) {
    return _then(_$SearchedOrderAddressEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      town: freezed == town
          ? _value.town
          : town // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchedOrderAddressEntityImpl implements _SearchedOrderAddressEntity {
  const _$SearchedOrderAddressEntityImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "town") this.town,
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "lat") this.lat,
      @JsonKey(name: "lng") this.lng});

  factory _$SearchedOrderAddressEntityImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SearchedOrderAddressEntityImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "town")
  final String? town;
  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "lat")
  final double? lat;
  @override
  @JsonKey(name: "lng")
  final double? lng;

  @override
  String toString() {
    return 'SearchedOrderAddressEntity(id: $id, town: $town, title: $title, lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchedOrderAddressEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.town, town) || other.town == town) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, town, title, lat, lng);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchedOrderAddressEntityImplCopyWith<_$SearchedOrderAddressEntityImpl>
      get copyWith => __$$SearchedOrderAddressEntityImplCopyWithImpl<
          _$SearchedOrderAddressEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchedOrderAddressEntityImplToJson(
      this,
    );
  }
}

abstract class _SearchedOrderAddressEntity
    implements SearchedOrderAddressEntity {
  const factory _SearchedOrderAddressEntity(
          {@JsonKey(name: "id") final int? id,
          @JsonKey(name: "town") final String? town,
          @JsonKey(name: "title") final String? title,
          @JsonKey(name: "lat") final double? lat,
          @JsonKey(name: "lng") final double? lng}) =
      _$SearchedOrderAddressEntityImpl;

  factory _SearchedOrderAddressEntity.fromJson(Map<String, dynamic> json) =
      _$SearchedOrderAddressEntityImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "town")
  String? get town;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "lat")
  double? get lat;
  @override
  @JsonKey(name: "lng")
  double? get lng;
  @override
  @JsonKey(ignore: true)
  _$$SearchedOrderAddressEntityImplCopyWith<_$SearchedOrderAddressEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
