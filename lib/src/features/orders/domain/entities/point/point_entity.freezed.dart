// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'point_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PointEntity _$PointEntityFromJson(Map<String, dynamic> json) {
  return _PointEntity.fromJson(json);
}

/// @nodoc
mixin _$PointEntity {
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PointEntityCopyWith<PointEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PointEntityCopyWith<$Res> {
  factory $PointEntityCopyWith(
          PointEntity value, $Res Function(PointEntity) then) =
      _$PointEntityCopyWithImpl<$Res, PointEntity>;
  @useResult
  $Res call({double lat, double lng, String title});
}

/// @nodoc
class _$PointEntityCopyWithImpl<$Res, $Val extends PointEntity>
    implements $PointEntityCopyWith<$Res> {
  _$PointEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$PointEntityImplCopyWith<$Res>
    implements $PointEntityCopyWith<$Res> {
  factory _$$PointEntityImplCopyWith(
          _$PointEntityImpl value, $Res Function(_$PointEntityImpl) then) =
      __$$PointEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double lat, double lng, String title});
}

/// @nodoc
class __$$PointEntityImplCopyWithImpl<$Res>
    extends _$PointEntityCopyWithImpl<$Res, _$PointEntityImpl>
    implements _$$PointEntityImplCopyWith<$Res> {
  __$$PointEntityImplCopyWithImpl(
      _$PointEntityImpl _value, $Res Function(_$PointEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
    Object? title = null,
  }) {
    return _then(_$PointEntityImpl(
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
class _$PointEntityImpl implements _PointEntity {
  const _$PointEntityImpl(
      {required this.lat, required this.lng, required this.title});

  factory _$PointEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PointEntityImplFromJson(json);

  @override
  final double lat;
  @override
  final double lng;
  @override
  final String title;

  @override
  String toString() {
    return 'PointEntity(lat: $lat, lng: $lng, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PointEntityImpl &&
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
  _$$PointEntityImplCopyWith<_$PointEntityImpl> get copyWith =>
      __$$PointEntityImplCopyWithImpl<_$PointEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PointEntityImplToJson(
      this,
    );
  }
}

abstract class _PointEntity implements PointEntity {
  const factory _PointEntity(
      {required final double lat,
      required final double lng,
      required final String title}) = _$PointEntityImpl;

  factory _PointEntity.fromJson(Map<String, dynamic> json) =
      _$PointEntityImpl.fromJson;

  @override
  double get lat;
  @override
  double get lng;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$PointEntityImplCopyWith<_$PointEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
