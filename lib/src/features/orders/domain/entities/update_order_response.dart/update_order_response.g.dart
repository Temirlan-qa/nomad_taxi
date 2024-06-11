// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_order_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateOrderResponseImpl _$$UpdateOrderResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateOrderResponseImpl(
      status: json['status'] as String,
      message: OrderEntity.fromJson(json['message'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UpdateOrderResponseImplToJson(
        _$UpdateOrderResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
