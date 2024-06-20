// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_order_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateOrderResponseImpl _$$CreateOrderResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateOrderResponseImpl(
      order: OrderEntity.fromJson(json['order'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateOrderResponseImplToJson(
        _$CreateOrderResponseImpl instance) =>
    <String, dynamic>{
      'order': instance.order,
    };
