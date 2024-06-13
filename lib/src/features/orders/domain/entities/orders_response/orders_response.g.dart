// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrdersResponseImpl _$$OrdersResponseImplFromJson(Map<String, dynamic> json) =>
    _$OrdersResponseImpl(
      orders: (json['orders'] as List<dynamic>)
          .map((e) => OrderEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OrdersResponseImplToJson(
        _$OrdersResponseImpl instance) =>
    <String, dynamic>{
      'orders': instance.orders,
    };
