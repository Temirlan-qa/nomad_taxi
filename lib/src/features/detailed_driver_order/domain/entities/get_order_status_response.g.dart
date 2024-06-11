// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_order_status_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetOrderStatusResponseImpl _$$GetOrderStatusResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetOrderStatusResponseImpl(
      status: json['status'] as String,
      data: OrderStatusDataResponse.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetOrderStatusResponseImplToJson(
        _$GetOrderStatusResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };
