// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrdersResponse _$OrdersResponseFromJson(Map<String, dynamic> json) {
  return _OrdersResponse.fromJson(json);
}

/// @nodoc
mixin _$OrdersResponse {
  List<OrderEntity> get orders => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrdersResponseCopyWith<OrdersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersResponseCopyWith<$Res> {
  factory $OrdersResponseCopyWith(
          OrdersResponse value, $Res Function(OrdersResponse) then) =
      _$OrdersResponseCopyWithImpl<$Res, OrdersResponse>;
  @useResult
  $Res call({List<OrderEntity> orders});
}

/// @nodoc
class _$OrdersResponseCopyWithImpl<$Res, $Val extends OrdersResponse>
    implements $OrdersResponseCopyWith<$Res> {
  _$OrdersResponseCopyWithImpl(this._value, this._then);

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
              as List<OrderEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrdersResponseImplCopyWith<$Res>
    implements $OrdersResponseCopyWith<$Res> {
  factory _$$OrdersResponseImplCopyWith(_$OrdersResponseImpl value,
          $Res Function(_$OrdersResponseImpl) then) =
      __$$OrdersResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<OrderEntity> orders});
}

/// @nodoc
class __$$OrdersResponseImplCopyWithImpl<$Res>
    extends _$OrdersResponseCopyWithImpl<$Res, _$OrdersResponseImpl>
    implements _$$OrdersResponseImplCopyWith<$Res> {
  __$$OrdersResponseImplCopyWithImpl(
      _$OrdersResponseImpl _value, $Res Function(_$OrdersResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
  }) {
    return _then(_$OrdersResponseImpl(
      orders: null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrdersResponseImpl implements _OrdersResponse {
  const _$OrdersResponseImpl({required final List<OrderEntity> orders})
      : _orders = orders;

  factory _$OrdersResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrdersResponseImplFromJson(json);

  final List<OrderEntity> _orders;
  @override
  List<OrderEntity> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  String toString() {
    return 'OrdersResponse(orders: $orders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrdersResponseImpl &&
            const DeepCollectionEquality().equals(other._orders, _orders));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_orders));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrdersResponseImplCopyWith<_$OrdersResponseImpl> get copyWith =>
      __$$OrdersResponseImplCopyWithImpl<_$OrdersResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrdersResponseImplToJson(
      this,
    );
  }
}

abstract class _OrdersResponse implements OrdersResponse {
  const factory _OrdersResponse({required final List<OrderEntity> orders}) =
      _$OrdersResponseImpl;

  factory _OrdersResponse.fromJson(Map<String, dynamic> json) =
      _$OrdersResponseImpl.fromJson;

  @override
  List<OrderEntity> get orders;
  @override
  @JsonKey(ignore: true)
  _$$OrdersResponseImplCopyWith<_$OrdersResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
