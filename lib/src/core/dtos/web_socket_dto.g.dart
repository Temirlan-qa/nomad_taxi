// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'web_socket_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WebSocketDtoImpl _$$WebSocketDtoImplFromJson(Map<String, dynamic> json) =>
    _$WebSocketDtoImpl(
      event: json['event'] as String,
      data: OrderStatusDataDto.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WebSocketDtoImplToJson(_$WebSocketDtoImpl instance) =>
    <String, dynamic>{
      'event': instance.event,
      'data': instance.data,
    };
