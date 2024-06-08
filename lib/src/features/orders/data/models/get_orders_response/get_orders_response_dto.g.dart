// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_orders_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetOrdersResponseDtoImpl _$$GetOrdersResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$GetOrdersResponseDtoImpl(
      status: json['status'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => OrderDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetOrdersResponseDtoImplToJson(
        _$GetOrdersResponseDtoImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };
