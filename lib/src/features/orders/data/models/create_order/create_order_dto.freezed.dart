// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_order_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateOrderDto _$CreateOrderDtoFromJson(Map<String, dynamic> json) {
  return _CreateOrderDto.fromJson(json);
}

/// @nodoc
mixin _$CreateOrderDto {
  @JsonKey(name: 'town_id')
  String get townId => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'points[0][lat]')
  double get startPointLat => throw _privateConstructorUsedError;
  @JsonKey(name: 'points[0][lng]')
  double get startPointLng => throw _privateConstructorUsedError;
  @JsonKey(name: 'points[0][title]')
  String get startPointTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'points[1][lat]')
  double get endPointLat => throw _privateConstructorUsedError;
  @JsonKey(name: 'points[1][lng]')
  double get endPointLng => throw _privateConstructorUsedError;
  @JsonKey(name: 'points[1][title]')
  String get endPointTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'use_bonus')
  int get useBonus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateOrderDtoCopyWith<CreateOrderDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateOrderDtoCopyWith<$Res> {
  factory $CreateOrderDtoCopyWith(
          CreateOrderDto value, $Res Function(CreateOrderDto) then) =
      _$CreateOrderDtoCopyWithImpl<$Res, CreateOrderDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'town_id') String townId,
      int price,
      @JsonKey(name: 'points[0][lat]') double startPointLat,
      @JsonKey(name: 'points[0][lng]') double startPointLng,
      @JsonKey(name: 'points[0][title]') String startPointTitle,
      @JsonKey(name: 'points[1][lat]') double endPointLat,
      @JsonKey(name: 'points[1][lng]') double endPointLng,
      @JsonKey(name: 'points[1][title]') String endPointTitle,
      @JsonKey(name: 'use_bonus') int useBonus});
}

/// @nodoc
class _$CreateOrderDtoCopyWithImpl<$Res, $Val extends CreateOrderDto>
    implements $CreateOrderDtoCopyWith<$Res> {
  _$CreateOrderDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? townId = null,
    Object? price = null,
    Object? startPointLat = null,
    Object? startPointLng = null,
    Object? startPointTitle = null,
    Object? endPointLat = null,
    Object? endPointLng = null,
    Object? endPointTitle = null,
    Object? useBonus = null,
  }) {
    return _then(_value.copyWith(
      townId: null == townId
          ? _value.townId
          : townId // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      startPointLat: null == startPointLat
          ? _value.startPointLat
          : startPointLat // ignore: cast_nullable_to_non_nullable
              as double,
      startPointLng: null == startPointLng
          ? _value.startPointLng
          : startPointLng // ignore: cast_nullable_to_non_nullable
              as double,
      startPointTitle: null == startPointTitle
          ? _value.startPointTitle
          : startPointTitle // ignore: cast_nullable_to_non_nullable
              as String,
      endPointLat: null == endPointLat
          ? _value.endPointLat
          : endPointLat // ignore: cast_nullable_to_non_nullable
              as double,
      endPointLng: null == endPointLng
          ? _value.endPointLng
          : endPointLng // ignore: cast_nullable_to_non_nullable
              as double,
      endPointTitle: null == endPointTitle
          ? _value.endPointTitle
          : endPointTitle // ignore: cast_nullable_to_non_nullable
              as String,
      useBonus: null == useBonus
          ? _value.useBonus
          : useBonus // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateOrderDtoImplCopyWith<$Res>
    implements $CreateOrderDtoCopyWith<$Res> {
  factory _$$CreateOrderDtoImplCopyWith(_$CreateOrderDtoImpl value,
          $Res Function(_$CreateOrderDtoImpl) then) =
      __$$CreateOrderDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'town_id') String townId,
      int price,
      @JsonKey(name: 'points[0][lat]') double startPointLat,
      @JsonKey(name: 'points[0][lng]') double startPointLng,
      @JsonKey(name: 'points[0][title]') String startPointTitle,
      @JsonKey(name: 'points[1][lat]') double endPointLat,
      @JsonKey(name: 'points[1][lng]') double endPointLng,
      @JsonKey(name: 'points[1][title]') String endPointTitle,
      @JsonKey(name: 'use_bonus') int useBonus});
}

/// @nodoc
class __$$CreateOrderDtoImplCopyWithImpl<$Res>
    extends _$CreateOrderDtoCopyWithImpl<$Res, _$CreateOrderDtoImpl>
    implements _$$CreateOrderDtoImplCopyWith<$Res> {
  __$$CreateOrderDtoImplCopyWithImpl(
      _$CreateOrderDtoImpl _value, $Res Function(_$CreateOrderDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? townId = null,
    Object? price = null,
    Object? startPointLat = null,
    Object? startPointLng = null,
    Object? startPointTitle = null,
    Object? endPointLat = null,
    Object? endPointLng = null,
    Object? endPointTitle = null,
    Object? useBonus = null,
  }) {
    return _then(_$CreateOrderDtoImpl(
      townId: null == townId
          ? _value.townId
          : townId // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      startPointLat: null == startPointLat
          ? _value.startPointLat
          : startPointLat // ignore: cast_nullable_to_non_nullable
              as double,
      startPointLng: null == startPointLng
          ? _value.startPointLng
          : startPointLng // ignore: cast_nullable_to_non_nullable
              as double,
      startPointTitle: null == startPointTitle
          ? _value.startPointTitle
          : startPointTitle // ignore: cast_nullable_to_non_nullable
              as String,
      endPointLat: null == endPointLat
          ? _value.endPointLat
          : endPointLat // ignore: cast_nullable_to_non_nullable
              as double,
      endPointLng: null == endPointLng
          ? _value.endPointLng
          : endPointLng // ignore: cast_nullable_to_non_nullable
              as double,
      endPointTitle: null == endPointTitle
          ? _value.endPointTitle
          : endPointTitle // ignore: cast_nullable_to_non_nullable
              as String,
      useBonus: null == useBonus
          ? _value.useBonus
          : useBonus // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateOrderDtoImpl implements _CreateOrderDto {
  const _$CreateOrderDtoImpl(
      {@JsonKey(name: 'town_id') required this.townId,
      required this.price,
      @JsonKey(name: 'points[0][lat]') required this.startPointLat,
      @JsonKey(name: 'points[0][lng]') required this.startPointLng,
      @JsonKey(name: 'points[0][title]') required this.startPointTitle,
      @JsonKey(name: 'points[1][lat]') required this.endPointLat,
      @JsonKey(name: 'points[1][lng]') required this.endPointLng,
      @JsonKey(name: 'points[1][title]') required this.endPointTitle,
      @JsonKey(name: 'use_bonus') required this.useBonus});

  factory _$CreateOrderDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateOrderDtoImplFromJson(json);

  @override
  @JsonKey(name: 'town_id')
  final String townId;
  @override
  final int price;
  @override
  @JsonKey(name: 'points[0][lat]')
  final double startPointLat;
  @override
  @JsonKey(name: 'points[0][lng]')
  final double startPointLng;
  @override
  @JsonKey(name: 'points[0][title]')
  final String startPointTitle;
  @override
  @JsonKey(name: 'points[1][lat]')
  final double endPointLat;
  @override
  @JsonKey(name: 'points[1][lng]')
  final double endPointLng;
  @override
  @JsonKey(name: 'points[1][title]')
  final String endPointTitle;
  @override
  @JsonKey(name: 'use_bonus')
  final int useBonus;

  @override
  String toString() {
    return 'CreateOrderDto(townId: $townId, price: $price, startPointLat: $startPointLat, startPointLng: $startPointLng, startPointTitle: $startPointTitle, endPointLat: $endPointLat, endPointLng: $endPointLng, endPointTitle: $endPointTitle, useBonus: $useBonus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateOrderDtoImpl &&
            (identical(other.townId, townId) || other.townId == townId) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.startPointLat, startPointLat) ||
                other.startPointLat == startPointLat) &&
            (identical(other.startPointLng, startPointLng) ||
                other.startPointLng == startPointLng) &&
            (identical(other.startPointTitle, startPointTitle) ||
                other.startPointTitle == startPointTitle) &&
            (identical(other.endPointLat, endPointLat) ||
                other.endPointLat == endPointLat) &&
            (identical(other.endPointLng, endPointLng) ||
                other.endPointLng == endPointLng) &&
            (identical(other.endPointTitle, endPointTitle) ||
                other.endPointTitle == endPointTitle) &&
            (identical(other.useBonus, useBonus) ||
                other.useBonus == useBonus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      townId,
      price,
      startPointLat,
      startPointLng,
      startPointTitle,
      endPointLat,
      endPointLng,
      endPointTitle,
      useBonus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateOrderDtoImplCopyWith<_$CreateOrderDtoImpl> get copyWith =>
      __$$CreateOrderDtoImplCopyWithImpl<_$CreateOrderDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateOrderDtoImplToJson(
      this,
    );
  }
}

abstract class _CreateOrderDto implements CreateOrderDto {
  const factory _CreateOrderDto(
      {@JsonKey(name: 'town_id') required final String townId,
      required final int price,
      @JsonKey(name: 'points[0][lat]') required final double startPointLat,
      @JsonKey(name: 'points[0][lng]') required final double startPointLng,
      @JsonKey(name: 'points[0][title]') required final String startPointTitle,
      @JsonKey(name: 'points[1][lat]') required final double endPointLat,
      @JsonKey(name: 'points[1][lng]') required final double endPointLng,
      @JsonKey(name: 'points[1][title]') required final String endPointTitle,
      @JsonKey(name: 'use_bonus')
      required final int useBonus}) = _$CreateOrderDtoImpl;

  factory _CreateOrderDto.fromJson(Map<String, dynamic> json) =
      _$CreateOrderDtoImpl.fromJson;

  @override
  @JsonKey(name: 'town_id')
  String get townId;
  @override
  int get price;
  @override
  @JsonKey(name: 'points[0][lat]')
  double get startPointLat;
  @override
  @JsonKey(name: 'points[0][lng]')
  double get startPointLng;
  @override
  @JsonKey(name: 'points[0][title]')
  String get startPointTitle;
  @override
  @JsonKey(name: 'points[1][lat]')
  double get endPointLat;
  @override
  @JsonKey(name: 'points[1][lng]')
  double get endPointLng;
  @override
  @JsonKey(name: 'points[1][title]')
  String get endPointTitle;
  @override
  @JsonKey(name: 'use_bonus')
  int get useBonus;
  @override
  @JsonKey(ignore: true)
  _$$CreateOrderDtoImplCopyWith<_$CreateOrderDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
