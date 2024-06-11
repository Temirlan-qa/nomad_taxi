// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_status_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderStatusDataResponseImpl _$$OrderStatusDataResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderStatusDataResponseImpl(
      socketId: json['socketId'] as String,
      activityTimeout: (json['activityTimeout'] as num).toInt(),
    );

Map<String, dynamic> _$$OrderStatusDataResponseImplToJson(
        _$OrderStatusDataResponseImpl instance) =>
    <String, dynamic>{
      'socketId': instance.socketId,
      'activityTimeout': instance.activityTimeout,
    };
