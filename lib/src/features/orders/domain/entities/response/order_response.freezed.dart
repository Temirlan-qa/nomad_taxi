// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderResponse _$OrderResponseFromJson(Map<String, dynamic> json) {
  return _OrderResponse.fromJson(json);
}

/// @nodoc
mixin _$OrderResponse {
  OrderEntity get order => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderResponseCopyWith<OrderResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderResponseCopyWith<$Res> {
  factory $OrderResponseCopyWith(
          OrderResponse value, $Res Function(OrderResponse) then) =
      _$OrderResponseCopyWithImpl<$Res, OrderResponse>;
  @useResult
  $Res call({OrderEntity order});

  $OrderEntityCopyWith<$Res> get order;
}

/// @nodoc
class _$OrderResponseCopyWithImpl<$Res, $Val extends OrderResponse>
    implements $OrderResponseCopyWith<$Res> {
  _$OrderResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
  }) {
    return _then(_value.copyWith(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as OrderEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderEntityCopyWith<$Res> get order {
    return $OrderEntityCopyWith<$Res>(_value.order, (value) {
      return _then(_value.copyWith(order: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderResponseImplCopyWith<$Res>
    implements $OrderResponseCopyWith<$Res> {
  factory _$$OrderResponseImplCopyWith(
          _$OrderResponseImpl value, $Res Function(_$OrderResponseImpl) then) =
      __$$OrderResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OrderEntity order});

  @override
  $OrderEntityCopyWith<$Res> get order;
}

/// @nodoc
class __$$OrderResponseImplCopyWithImpl<$Res>
    extends _$OrderResponseCopyWithImpl<$Res, _$OrderResponseImpl>
    implements _$$OrderResponseImplCopyWith<$Res> {
  __$$OrderResponseImplCopyWithImpl(
      _$OrderResponseImpl _value, $Res Function(_$OrderResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
  }) {
    return _then(_$OrderResponseImpl(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as OrderEntity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderResponseImpl implements _OrderResponse {
  const _$OrderResponseImpl({required this.order});

  factory _$OrderResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderResponseImplFromJson(json);

  @override
  final OrderEntity order;

  @override
  String toString() {
    return 'OrderResponse(order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderResponseImpl &&
            (identical(other.order, order) || other.order == order));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, order);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderResponseImplCopyWith<_$OrderResponseImpl> get copyWith =>
      __$$OrderResponseImplCopyWithImpl<_$OrderResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderResponseImplToJson(
      this,
    );
  }
}

abstract class _OrderResponse implements OrderResponse {
  const factory _OrderResponse({required final OrderEntity order}) =
      _$OrderResponseImpl;

  factory _OrderResponse.fromJson(Map<String, dynamic> json) =
      _$OrderResponseImpl.fromJson;

  @override
  OrderEntity get order;
  @override
  @JsonKey(ignore: true)
  _$$OrderResponseImplCopyWith<_$OrderResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
