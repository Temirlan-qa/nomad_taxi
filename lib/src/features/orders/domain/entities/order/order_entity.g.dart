// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderEntityImpl _$$OrderEntityImplFromJson(Map<String, dynamic> json) =>
    _$OrderEntityImpl(
      id: json['id'] as String,
      startPoint: json['startPoint'] as String,
      endPoint: json['endPoint'] as String,
      price: (json['price'] as num).toInt(),
      comment: json['comment'] as String?,
      status: json['status'] as String,
      hasRoute: json['hasRoute'] as bool,
    );

Map<String, dynamic> _$$OrderEntityImplToJson(_$OrderEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startPoint': instance.startPoint,
      'endPoint': instance.endPoint,
      'price': instance.price,
      'comment': instance.comment,
      'status': instance.status,
      'hasRoute': instance.hasRoute,
    };
