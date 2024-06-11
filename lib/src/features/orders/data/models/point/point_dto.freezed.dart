// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'point_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PointDto _$PointDtoFromJson(Map<String, dynamic> json) {
  return _PointDto.fromJson(json);
}

/// @nodoc
mixin _$PointDto {
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PointDtoCopyWith<PointDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PointDtoCopyWith<$Res> {
  factory $PointDtoCopyWith(PointDto value, $Res Function(PointDto) then) =
      _$PointDtoCopyWithImpl<$Res, PointDto>;
  @useResult
  $Res call({double lat, double lng, String title});
}

/// @nodoc
class _$PointDtoCopyWithImpl<$Res, $Val extends PointDto>
    implements $PointDtoCopyWith<$Res> {
  _$PointDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PointDtoImplCopyWith<$Res>
    implements $PointDtoCopyWith<$Res> {
  factory _$$PointDtoImplCopyWith(
          _$PointDtoImpl value, $Res Function(_$PointDtoImpl) then) =
      __$$PointDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double lat, double lng, String title});
}

/// @nodoc
class __$$PointDtoImplCopyWithImpl<$Res>
    extends _$PointDtoCopyWithImpl<$Res, _$PointDtoImpl>
    implements _$$PointDtoImplCopyWith<$Res> {
  __$$PointDtoImplCopyWithImpl(
      _$PointDtoImpl _value, $Res Function(_$PointDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
    Object? title = null,
  }) {
    return _then(_$PointDtoImpl(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PointDtoImpl implements _PointDto {
  const _$PointDtoImpl(
      {required this.lat, required this.lng, required this.title});

  factory _$PointDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PointDtoImplFromJson(json);

  @override
  final double lat;
  @override
  final double lng;
  @override
  final String title;

  @override
  String toString() {
    return 'PointDto(lat: $lat, lng: $lng, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PointDtoImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lng, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PointDtoImplCopyWith<_$PointDtoImpl> get copyWith =>
      __$$PointDtoImplCopyWithImpl<_$PointDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PointDtoImplToJson(
      this,
    );
  }
}

abstract class _PointDto implements PointDto {
  const factory _PointDto(
      {required final double lat,
      required final double lng,
      required final String title}) = _$PointDtoImpl;

  factory _PointDto.fromJson(Map<String, dynamic> json) =
      _$PointDtoImpl.fromJson;

  @override
  double get lat;
  @override
  double get lng;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$PointDtoImplCopyWith<_$PointDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
