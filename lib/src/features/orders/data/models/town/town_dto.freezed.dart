// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'town_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TownDto _$TownDtoFromJson(Map<String, dynamic> json) {
  return _TownDto.fromJson(json);
}

/// @nodoc
mixin _$TownDto {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get lat => throw _privateConstructorUsedError;
  String get lng => throw _privateConstructorUsedError;
  int get radius => throw _privateConstructorUsedError;
  @JsonKey(name: 'language_code')
  String? get languageCode => throw _privateConstructorUsedError;
  SupportDto? get support => throw _privateConstructorUsedError;
  @JsonKey(name: 'inside_city')
  InsideCityDto? get insideCity => throw _privateConstructorUsedError;
  @JsonKey(name: 'franchise_link')
  String get franchiseLink => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TownDtoCopyWith<TownDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TownDtoCopyWith<$Res> {
  factory $TownDtoCopyWith(TownDto value, $Res Function(TownDto) then) =
      _$TownDtoCopyWithImpl<$Res, TownDto>;
  @useResult
  $Res call(
      {int id,
      String title,
      String status,
      String lat,
      String lng,
      int radius,
      @JsonKey(name: 'language_code') String? languageCode,
      SupportDto? support,
      @JsonKey(name: 'inside_city') InsideCityDto? insideCity,
      @JsonKey(name: 'franchise_link') String franchiseLink});

  $SupportDtoCopyWith<$Res>? get support;
  $InsideCityDtoCopyWith<$Res>? get insideCity;
}

/// @nodoc
class _$TownDtoCopyWithImpl<$Res, $Val extends TownDto>
    implements $TownDtoCopyWith<$Res> {
  _$TownDtoCopyWithImpl(this._value, this._then);

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
    Object? languageCode = freezed,
    Object? support = freezed,
    Object? insideCity = freezed,
    Object? franchiseLink = null,
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
      languageCode: freezed == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String?,
      support: freezed == support
          ? _value.support
          : support // ignore: cast_nullable_to_non_nullable
              as SupportDto?,
      insideCity: freezed == insideCity
          ? _value.insideCity
          : insideCity // ignore: cast_nullable_to_non_nullable
              as InsideCityDto?,
      franchiseLink: null == franchiseLink
          ? _value.franchiseLink
          : franchiseLink // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SupportDtoCopyWith<$Res>? get support {
    if (_value.support == null) {
      return null;
    }

    return $SupportDtoCopyWith<$Res>(_value.support!, (value) {
      return _then(_value.copyWith(support: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $InsideCityDtoCopyWith<$Res>? get insideCity {
    if (_value.insideCity == null) {
      return null;
    }

    return $InsideCityDtoCopyWith<$Res>(_value.insideCity!, (value) {
      return _then(_value.copyWith(insideCity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TownDtoImplCopyWith<$Res> implements $TownDtoCopyWith<$Res> {
  factory _$$TownDtoImplCopyWith(
          _$TownDtoImpl value, $Res Function(_$TownDtoImpl) then) =
      __$$TownDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String status,
      String lat,
      String lng,
      int radius,
      @JsonKey(name: 'language_code') String? languageCode,
      SupportDto? support,
      @JsonKey(name: 'inside_city') InsideCityDto? insideCity,
      @JsonKey(name: 'franchise_link') String franchiseLink});

  @override
  $SupportDtoCopyWith<$Res>? get support;
  @override
  $InsideCityDtoCopyWith<$Res>? get insideCity;
}

/// @nodoc
class __$$TownDtoImplCopyWithImpl<$Res>
    extends _$TownDtoCopyWithImpl<$Res, _$TownDtoImpl>
    implements _$$TownDtoImplCopyWith<$Res> {
  __$$TownDtoImplCopyWithImpl(
      _$TownDtoImpl _value, $Res Function(_$TownDtoImpl) _then)
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
    Object? languageCode = freezed,
    Object? support = freezed,
    Object? insideCity = freezed,
    Object? franchiseLink = null,
  }) {
    return _then(_$TownDtoImpl(
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
      languageCode: freezed == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String?,
      support: freezed == support
          ? _value.support
          : support // ignore: cast_nullable_to_non_nullable
              as SupportDto?,
      insideCity: freezed == insideCity
          ? _value.insideCity
          : insideCity // ignore: cast_nullable_to_non_nullable
              as InsideCityDto?,
      franchiseLink: null == franchiseLink
          ? _value.franchiseLink
          : franchiseLink // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TownDtoImpl implements _TownDto {
  const _$TownDtoImpl(
      {required this.id,
      required this.title,
      required this.status,
      required this.lat,
      required this.lng,
      required this.radius,
      @JsonKey(name: 'language_code') this.languageCode,
      this.support,
      @JsonKey(name: 'inside_city') this.insideCity,
      @JsonKey(name: 'franchise_link') required this.franchiseLink});

  factory _$TownDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TownDtoImplFromJson(json);

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
  @JsonKey(name: 'language_code')
  final String? languageCode;
  @override
  final SupportDto? support;
  @override
  @JsonKey(name: 'inside_city')
  final InsideCityDto? insideCity;
  @override
  @JsonKey(name: 'franchise_link')
  final String franchiseLink;

  @override
  String toString() {
    return 'TownDto(id: $id, title: $title, status: $status, lat: $lat, lng: $lng, radius: $radius, languageCode: $languageCode, support: $support, insideCity: $insideCity, franchiseLink: $franchiseLink)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TownDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.radius, radius) || other.radius == radius) &&
            (identical(other.languageCode, languageCode) ||
                other.languageCode == languageCode) &&
            (identical(other.support, support) || other.support == support) &&
            (identical(other.insideCity, insideCity) ||
                other.insideCity == insideCity) &&
            (identical(other.franchiseLink, franchiseLink) ||
                other.franchiseLink == franchiseLink));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, status, lat, lng,
      radius, languageCode, support, insideCity, franchiseLink);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TownDtoImplCopyWith<_$TownDtoImpl> get copyWith =>
      __$$TownDtoImplCopyWithImpl<_$TownDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TownDtoImplToJson(
      this,
    );
  }
}

abstract class _TownDto implements TownDto {
  const factory _TownDto(
      {required final int id,
      required final String title,
      required final String status,
      required final String lat,
      required final String lng,
      required final int radius,
      @JsonKey(name: 'language_code') final String? languageCode,
      final SupportDto? support,
      @JsonKey(name: 'inside_city') final InsideCityDto? insideCity,
      @JsonKey(name: 'franchise_link')
      required final String franchiseLink}) = _$TownDtoImpl;

  factory _TownDto.fromJson(Map<String, dynamic> json) = _$TownDtoImpl.fromJson;

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
  @JsonKey(name: 'language_code')
  String? get languageCode;
  @override
  SupportDto? get support;
  @override
  @JsonKey(name: 'inside_city')
  InsideCityDto? get insideCity;
  @override
  @JsonKey(name: 'franchise_link')
  String get franchiseLink;
  @override
  @JsonKey(ignore: true)
  _$$TownDtoImplCopyWith<_$TownDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
