// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_order_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateOrderResponseImpl _$$CreateOrderResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateOrderResponseImpl(
      status: json['status'] as String,
      data: OrderEntity.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateOrderResponseImplToJson(
        _$CreateOrderResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };
