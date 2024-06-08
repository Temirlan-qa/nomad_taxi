// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderResponseDtoImpl _$$OrderResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderResponseDtoImpl(
      status: json['status'] as String,
      data: OrderDto.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OrderResponseDtoImplToJson(
        _$OrderResponseDtoImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };
