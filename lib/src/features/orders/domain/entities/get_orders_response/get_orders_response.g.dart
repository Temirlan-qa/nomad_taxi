// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_orders_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetOrdersResponseImpl _$$GetOrdersResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetOrdersResponseImpl(
      status: json['status'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => OrderEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetOrdersResponseImplToJson(
        _$GetOrdersResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };
