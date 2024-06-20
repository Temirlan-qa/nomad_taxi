// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_order_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateOrderResponse _$CreateOrderResponseFromJson(Map<String, dynamic> json) {
  return _CreateOrderResponse.fromJson(json);
}

/// @nodoc
mixin _$CreateOrderResponse {
  OrderEntity get order => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateOrderResponseCopyWith<CreateOrderResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateOrderResponseCopyWith<$Res> {
  factory $CreateOrderResponseCopyWith(
          CreateOrderResponse value, $Res Function(CreateOrderResponse) then) =
      _$CreateOrderResponseCopyWithImpl<$Res, CreateOrderResponse>;
  @useResult
  $Res call({OrderEntity order});

  $OrderEntityCopyWith<$Res> get order;
}

/// @nodoc
class _$CreateOrderResponseCopyWithImpl<$Res, $Val extends CreateOrderResponse>
    implements $CreateOrderResponseCopyWith<$Res> {
  _$CreateOrderResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$CreateOrderResponseImplCopyWith<$Res>
    implements $CreateOrderResponseCopyWith<$Res> {
  factory _$$CreateOrderResponseImplCopyWith(_$CreateOrderResponseImpl value,
          $Res Function(_$CreateOrderResponseImpl) then) =
      __$$CreateOrderResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OrderEntity order});

  @override
  $OrderEntityCopyWith<$Res> get order;
}

/// @nodoc
class __$$CreateOrderResponseImplCopyWithImpl<$Res>
    extends _$CreateOrderResponseCopyWithImpl<$Res, _$CreateOrderResponseImpl>
    implements _$$CreateOrderResponseImplCopyWith<$Res> {
  __$$CreateOrderResponseImplCopyWithImpl(_$CreateOrderResponseImpl _value,
      $Res Function(_$CreateOrderResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
  }) {
    return _then(_$CreateOrderResponseImpl(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as OrderEntity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateOrderResponseImpl implements _CreateOrderResponse {
  const _$CreateOrderResponseImpl({required this.order});

  factory _$CreateOrderResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateOrderResponseImplFromJson(json);

  @override
  final OrderEntity order;

  @override
  String toString() {
    return 'CreateOrderResponse(order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateOrderResponseImpl &&
            (identical(other.order, order) || other.order == order));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, order);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateOrderResponseImplCopyWith<_$CreateOrderResponseImpl> get copyWith =>
      __$$CreateOrderResponseImplCopyWithImpl<_$CreateOrderResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateOrderResponseImplToJson(
      this,
    );
  }
}

abstract class _CreateOrderResponse implements CreateOrderResponse {
  const factory _CreateOrderResponse({required final OrderEntity order}) =
      _$CreateOrderResponseImpl;

  factory _CreateOrderResponse.fromJson(Map<String, dynamic> json) =
      _$CreateOrderResponseImpl.fromJson;

  @override
  OrderEntity get order;
  @override
  @JsonKey(ignore: true)
  _$$CreateOrderResponseImplCopyWith<_$CreateOrderResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
