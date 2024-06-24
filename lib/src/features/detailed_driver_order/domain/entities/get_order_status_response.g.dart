// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_order_status_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetOrderStatusResponseImpl _$$GetOrderStatusResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetOrderStatusResponseImpl(
      order:
          GetOrderStatusEntity.fromJson(json['order'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetOrderStatusResponseImplToJson(
        _$GetOrderStatusResponseImpl instance) =>
    <String, dynamic>{
      'order': instance.order,
    };
