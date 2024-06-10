// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_order_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateOrderResponseDtoImpl _$$CreateOrderResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateOrderResponseDtoImpl(
      status: json['status'] as String,
      data: OrderDto.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateOrderResponseDtoImplToJson(
        _$CreateOrderResponseDtoImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };
