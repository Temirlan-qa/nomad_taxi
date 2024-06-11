// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_order_status_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetOrderStatusResponseDtoImpl _$$GetOrderStatusResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$GetOrderStatusResponseDtoImpl(
      status: json['status'] as String,
      data: OrderStatusDataDto.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetOrderStatusResponseDtoImplToJson(
        _$GetOrderStatusResponseDtoImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };
