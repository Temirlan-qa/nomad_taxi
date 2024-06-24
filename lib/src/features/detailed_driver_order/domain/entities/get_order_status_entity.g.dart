// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_order_status_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetOrderStatusEntityImpl _$$GetOrderStatusEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$GetOrderStatusEntityImpl(
      orderId: (json['orderId'] as num).toInt(),
      status: json['status'] as String,
    );

Map<String, dynamic> _$$GetOrderStatusEntityImplToJson(
        _$GetOrderStatusEntityImpl instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'status': instance.status,
    };
