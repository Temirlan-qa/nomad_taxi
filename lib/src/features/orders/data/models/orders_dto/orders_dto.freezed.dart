// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrdersDto _$OrdersDtoFromJson(Map<String, dynamic> json) {
  return _OrdersDto.fromJson(json);
}

/// @nodoc
mixin _$OrdersDto {
  List<OrderDto> get orders => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrdersDtoCopyWith<OrdersDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersDtoCopyWith<$Res> {
  factory $OrdersDtoCopyWith(OrdersDto value, $Res Function(OrdersDto) then) =
      _$OrdersDtoCopyWithImpl<$Res, OrdersDto>;
  @useResult
  $Res call({List<OrderDto> orders});
}

/// @nodoc
class _$OrdersDtoCopyWithImpl<$Res, $Val extends OrdersDto>
    implements $OrdersDtoCopyWith<$Res> {
  _$OrdersDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
  }) {
    return _then(_value.copyWith(
      orders: null == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrdersDtoImplCopyWith<$Res>
    implements $OrdersDtoCopyWith<$Res> {
  factory _$$OrdersDtoImplCopyWith(
          _$OrdersDtoImpl value, $Res Function(_$OrdersDtoImpl) then) =
      __$$OrdersDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<OrderDto> orders});
}

/// @nodoc
class __$$OrdersDtoImplCopyWithImpl<$Res>
    extends _$OrdersDtoCopyWithImpl<$Res, _$OrdersDtoImpl>
    implements _$$OrdersDtoImplCopyWith<$Res> {
  __$$OrdersDtoImplCopyWithImpl(
      _$OrdersDtoImpl _value, $Res Function(_$OrdersDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
  }) {
    return _then(_$OrdersDtoImpl(
      orders: null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrdersDtoImpl implements _OrdersDto {
  const _$OrdersDtoImpl({required final List<OrderDto> orders})
      : _orders = orders;

  factory _$OrdersDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrdersDtoImplFromJson(json);

  final List<OrderDto> _orders;
  @override
  List<OrderDto> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  String toString() {
    return 'OrdersDto(orders: $orders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrdersDtoImpl &&
            const DeepCollectionEquality().equals(other._orders, _orders));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_orders));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrdersDtoImplCopyWith<_$OrdersDtoImpl> get copyWith =>
      __$$OrdersDtoImplCopyWithImpl<_$OrdersDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrdersDtoImplToJson(
      this,
    );
  }
}

abstract class _OrdersDto implements OrdersDto {
  const factory _OrdersDto({required final List<OrderDto> orders}) =
      _$OrdersDtoImpl;

  factory _OrdersDto.fromJson(Map<String, dynamic> json) =
      _$OrdersDtoImpl.fromJson;

  @override
  List<OrderDto> get orders;
  @override
  @JsonKey(ignore: true)
  _$$OrdersDtoImplCopyWith<_$OrdersDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
