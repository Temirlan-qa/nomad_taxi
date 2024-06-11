// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_status_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderStatusDataDtoImpl _$$OrderStatusDataDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderStatusDataDtoImpl(
      socketId: json['socket_id'] as String,
      activityTimeout: (json['activity_timeout'] as num).toInt(),
    );

Map<String, dynamic> _$$OrderStatusDataDtoImplToJson(
        _$OrderStatusDataDtoImpl instance) =>
    <String, dynamic>{
      'socket_id': instance.socketId,
      'activity_timeout': instance.activityTimeout,
    };
