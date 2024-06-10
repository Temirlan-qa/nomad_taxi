// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inside_city_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InsideCityEntity _$InsideCityEntityFromJson(Map<String, dynamic> json) {
  return _InsideCityEntity.fromJson(json);
}

/// @nodoc
mixin _$InsideCityEntity {
  int get minPrice => throw _privateConstructorUsedError;
  int get maxPrice => throw _privateConstructorUsedError;
  int get commission => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InsideCityEntityCopyWith<InsideCityEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InsideCityEntityCopyWith<$Res> {
  factory $InsideCityEntityCopyWith(
          InsideCityEntity value, $Res Function(InsideCityEntity) then) =
      _$InsideCityEntityCopyWithImpl<$Res, InsideCityEntity>;
  @useResult
  $Res call({int minPrice, int maxPrice, int commission});
}

/// @nodoc
class _$InsideCityEntityCopyWithImpl<$Res, $Val extends InsideCityEntity>
    implements $InsideCityEntityCopyWith<$Res> {
  _$InsideCityEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minPrice = null,
    Object? maxPrice = null,
    Object? commission = null,
  }) {
    return _then(_value.copyWith(
      minPrice: null == minPrice
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as int,
      maxPrice: null == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as int,
      commission: null == commission
          ? _value.commission
          : commission // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InsideCityEntityImplCopyWith<$Res>
    implements $InsideCityEntityCopyWith<$Res> {
  factory _$$InsideCityEntityImplCopyWith(_$InsideCityEntityImpl value,
          $Res Function(_$InsideCityEntityImpl) then) =
      __$$InsideCityEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int minPrice, int maxPrice, int commission});
}

/// @nodoc
class __$$InsideCityEntityImplCopyWithImpl<$Res>
    extends _$InsideCityEntityCopyWithImpl<$Res, _$InsideCityEntityImpl>
    implements _$$InsideCityEntityImplCopyWith<$Res> {
  __$$InsideCityEntityImplCopyWithImpl(_$InsideCityEntityImpl _value,
      $Res Function(_$InsideCityEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minPrice = null,
    Object? maxPrice = null,
    Object? commission = null,
  }) {
    return _then(_$InsideCityEntityImpl(
      minPrice: null == minPrice
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as int,
      maxPrice: null == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as int,
      commission: null == commission
          ? _value.commission
          : commission // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InsideCityEntityImpl implements _InsideCityEntity {
  const _$InsideCityEntityImpl(
      {required this.minPrice,
      required this.maxPrice,
      required this.commission});

  factory _$InsideCityEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$InsideCityEntityImplFromJson(json);

  @override
  final int minPrice;
  @override
  final int maxPrice;
  @override
  final int commission;

  @override
  String toString() {
    return 'InsideCityEntity(minPrice: $minPrice, maxPrice: $maxPrice, commission: $commission)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsideCityEntityImpl &&
            (identical(other.minPrice, minPrice) ||
                other.minPrice == minPrice) &&
            (identical(other.maxPrice, maxPrice) ||
                other.maxPrice == maxPrice) &&
            (identical(other.commission, commission) ||
                other.commission == commission));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, minPrice, maxPrice, commission);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InsideCityEntityImplCopyWith<_$InsideCityEntityImpl> get copyWith =>
      __$$InsideCityEntityImplCopyWithImpl<_$InsideCityEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InsideCityEntityImplToJson(
      this,
    );
  }
}

abstract class _InsideCityEntity implements InsideCityEntity {
  const factory _InsideCityEntity(
      {required final int minPrice,
      required final int maxPrice,
      required final int commission}) = _$InsideCityEntityImpl;

  factory _InsideCityEntity.fromJson(Map<String, dynamic> json) =
      _$InsideCityEntityImpl.fromJson;

  @override
  int get minPrice;
  @override
  int get maxPrice;
  @override
  int get commission;
  @override
  @JsonKey(ignore: true)
  _$$InsideCityEntityImplCopyWith<_$InsideCityEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
