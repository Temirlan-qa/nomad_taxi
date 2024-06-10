// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_order_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateOrderResponseDtoImpl _$$UpdateOrderResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateOrderResponseDtoImpl(
      status: json['status'] as String,
      message: OrderDto.fromJson(json['message'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UpdateOrderResponseDtoImplToJson(
        _$UpdateOrderResponseDtoImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
