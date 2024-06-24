// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'town_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TownEntity _$TownEntityFromJson(Map<String, dynamic> json) {
  return _TownEntity.fromJson(json);
}

/// @nodoc
mixin _$TownEntity {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get lat => throw _privateConstructorUsedError;
  String get lng => throw _privateConstructorUsedError;
  int get radius => throw _privateConstructorUsedError;
  String get franchiseLink => throw _privateConstructorUsedError;
  String? get languageCode => throw _privateConstructorUsedError;
  SupportEntity? get support => throw _privateConstructorUsedError;
  InsideCityEntity? get insideCity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TownEntityCopyWith<TownEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TownEntityCopyWith<$Res> {
  factory $TownEntityCopyWith(
          TownEntity value, $Res Function(TownEntity) then) =
      _$TownEntityCopyWithImpl<$Res, TownEntity>;
  @useResult
  $Res call(
      {int id,
      String title,
      String status,
      String lat,
      String lng,
      int radius,
      String franchiseLink,
      String? languageCode,
      SupportEntity? support,
      InsideCityEntity? insideCity});

  $SupportEntityCopyWith<$Res>? get support;
  $InsideCityEntityCopyWith<$Res>? get insideCity;
}

/// @nodoc
class _$TownEntityCopyWithImpl<$Res, $Val extends TownEntity>
    implements $TownEntityCopyWith<$Res> {
  _$TownEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? status = null,
    Object? lat = null,
    Object? lng = null,
    Object? radius = null,
    Object? franchiseLink = null,
    Object? languageCode = freezed,
    Object? support = freezed,
    Object? insideCity = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String,
      radius: null == radius
          ? _value.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as int,
      franchiseLink: null == franchiseLink
          ? _value.franchiseLink
          : franchiseLink // ignore: cast_nullable_to_non_nullable
              as String,
      languageCode: freezed == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String?,
      support: freezed == support
          ? _value.support
          : support // ignore: cast_nullable_to_non_nullable
              as SupportEntity?,
      insideCity: freezed == insideCity
          ? _value.insideCity
          : insideCity // ignore: cast_nullable_to_non_nullable
              as InsideCityEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SupportEntityCopyWith<$Res>? get support {
    if (_value.support == null) {
      return null;
    }

    return $SupportEntityCopyWith<$Res>(_value.support!, (value) {
      return _then(_value.copyWith(support: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $InsideCityEntityCopyWith<$Res>? get insideCity {
    if (_value.insideCity == null) {
      return null;
    }

    return $InsideCityEntityCopyWith<$Res>(_value.insideCity!, (value) {
      return _then(_value.copyWith(insideCity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TownEntityImplCopyWith<$Res>
    implements $TownEntityCopyWith<$Res> {
  factory _$$TownEntityImplCopyWith(
          _$TownEntityImpl value, $Res Function(_$TownEntityImpl) then) =
      __$$TownEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String status,
      String lat,
      String lng,
      int radius,
      String franchiseLink,
      String? languageCode,
      SupportEntity? support,
      InsideCityEntity? insideCity});

  @override
  $SupportEntityCopyWith<$Res>? get support;
  @override
  $InsideCityEntityCopyWith<$Res>? get insideCity;
}

/// @nodoc
class __$$TownEntityImplCopyWithImpl<$Res>
    extends _$TownEntityCopyWithImpl<$Res, _$TownEntityImpl>
    implements _$$TownEntityImplCopyWith<$Res> {
  __$$TownEntityImplCopyWithImpl(
      _$TownEntityImpl _value, $Res Function(_$TownEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? status = null,
    Object? lat = null,
    Object? lng = null,
    Object? radius = null,
    Object? franchiseLink = null,
    Object? languageCode = freezed,
    Object? support = freezed,
    Object? insideCity = freezed,
  }) {
    return _then(_$TownEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String,
      radius: null == radius
          ? _value.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as int,
      franchiseLink: null == franchiseLink
          ? _value.franchiseLink
          : franchiseLink // ignore: cast_nullable_to_non_nullable
              as String,
      languageCode: freezed == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String?,
      support: freezed == support
          ? _value.support
          : support // ignore: cast_nullable_to_non_nullable
              as SupportEntity?,
      insideCity: freezed == insideCity
          ? _value.insideCity
          : insideCity // ignore: cast_nullable_to_non_nullable
              as InsideCityEntity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TownEntityImpl implements _TownEntity {
  const _$TownEntityImpl(
      {required this.id,
      required this.title,
      required this.status,
      required this.lat,
      required this.lng,
      required this.radius,
      required this.franchiseLink,
      this.languageCode,
      this.support,
      this.insideCity});

  factory _$TownEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$TownEntityImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String status;
  @override
  final String lat;
  @override
  final String lng;
  @override
  final int radius;
  @override
  final String franchiseLink;
  @override
  final String? languageCode;
  @override
  final SupportEntity? support;
  @override
  final InsideCityEntity? insideCity;

  @override
  String toString() {
    return 'TownEntity(id: $id, title: $title, status: $status, lat: $lat, lng: $lng, radius: $radius, franchiseLink: $franchiseLink, languageCode: $languageCode, support: $support, insideCity: $insideCity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TownEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.radius, radius) || other.radius == radius) &&
            (identical(other.franchiseLink, franchiseLink) ||
                other.franchiseLink == franchiseLink) &&
            (identical(other.languageCode, languageCode) ||
                other.languageCode == languageCode) &&
            (identical(other.support, support) || other.support == support) &&
            (identical(other.insideCity, insideCity) ||
                other.insideCity == insideCity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, status, lat, lng,
      radius, franchiseLink, languageCode, support, insideCity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TownEntityImplCopyWith<_$TownEntityImpl> get copyWith =>
      __$$TownEntityImplCopyWithImpl<_$TownEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TownEntityImplToJson(
      this,
    );
  }
}

abstract class _TownEntity implements TownEntity {
  const factory _TownEntity(
      {required final int id,
      required final String title,
      required final String status,
      required final String lat,
      required final String lng,
      required final int radius,
      required final String franchiseLink,
      final String? languageCode,
      final SupportEntity? support,
      final InsideCityEntity? insideCity}) = _$TownEntityImpl;

  factory _TownEntity.fromJson(Map<String, dynamic> json) =
      _$TownEntityImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get status;
  @override
  String get lat;
  @override
  String get lng;
  @override
  int get radius;
  @override
  String get franchiseLink;
  @override
  String? get languageCode;
  @override
  SupportEntity? get support;
  @override
  InsideCityEntity? get insideCity;
  @override
  @JsonKey(ignore: true)
  _$$TownEntityImplCopyWith<_$TownEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
