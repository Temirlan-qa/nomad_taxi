// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_order_status_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetOrderStatusResponseDtoImpl _$$GetOrderStatusResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$GetOrderStatusResponseDtoImpl(
      orderId: (json['orderId'] as num).toInt(),
      status: $enumDecode(_$OrderStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$$GetOrderStatusResponseDtoImplToJson(
        _$GetOrderStatusResponseDtoImpl instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'status': _$OrderStatusEnumMap[instance.status]!,
    };

const _$OrderStatusEnumMap = {
  OrderStatus.created: 'created',
  OrderStatus.accepted: 'accepted',
  OrderStatus.waiting: 'waiting',
  OrderStatus.startRoute: 'startRoute',
  OrderStatus.complete: 'complete',
  OrderStatus.cancel: 'cancel',
};
