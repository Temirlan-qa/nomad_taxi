// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_order_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateOrderDto _$UpdateOrderDtoFromJson(Map<String, dynamic> json) {
  return _UpdateOrderDto.fromJson(json);
}

/// @nodoc
mixin _$UpdateOrderDto {
  int get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateOrderDtoCopyWith<UpdateOrderDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateOrderDtoCopyWith<$Res> {
  factory $UpdateOrderDtoCopyWith(
          UpdateOrderDto value, $Res Function(UpdateOrderDto) then) =
      _$UpdateOrderDtoCopyWithImpl<$Res, UpdateOrderDto>;
  @useResult
  $Res call({int price});
}

/// @nodoc
class _$UpdateOrderDtoCopyWithImpl<$Res, $Val extends UpdateOrderDto>
    implements $UpdateOrderDtoCopyWith<$Res> {
  _$UpdateOrderDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateOrderDtoImplCopyWith<$Res>
    implements $UpdateOrderDtoCopyWith<$Res> {
  factory _$$UpdateOrderDtoImplCopyWith(_$UpdateOrderDtoImpl value,
          $Res Function(_$UpdateOrderDtoImpl) then) =
      __$$UpdateOrderDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int price});
}

/// @nodoc
class __$$UpdateOrderDtoImplCopyWithImpl<$Res>
    extends _$UpdateOrderDtoCopyWithImpl<$Res, _$UpdateOrderDtoImpl>
    implements _$$UpdateOrderDtoImplCopyWith<$Res> {
  __$$UpdateOrderDtoImplCopyWithImpl(
      _$UpdateOrderDtoImpl _value, $Res Function(_$UpdateOrderDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
  }) {
    return _then(_$UpdateOrderDtoImpl(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateOrderDtoImpl implements _UpdateOrderDto {
  const _$UpdateOrderDtoImpl({required this.price});

  factory _$UpdateOrderDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateOrderDtoImplFromJson(json);

  @override
  final int price;

  @override
  String toString() {
    return 'UpdateOrderDto(price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateOrderDtoImpl &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateOrderDtoImplCopyWith<_$UpdateOrderDtoImpl> get copyWith =>
      __$$UpdateOrderDtoImplCopyWithImpl<_$UpdateOrderDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateOrderDtoImplToJson(
      this,
    );
  }
}

abstract class _UpdateOrderDto implements UpdateOrderDto {
  const factory _UpdateOrderDto({required final int price}) =
      _$UpdateOrderDtoImpl;

  factory _UpdateOrderDto.fromJson(Map<String, dynamic> json) =
      _$UpdateOrderDtoImpl.fromJson;

  @override
  int get price;
  @override
  @JsonKey(ignore: true)
  _$$UpdateOrderDtoImplCopyWith<_$UpdateOrderDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
