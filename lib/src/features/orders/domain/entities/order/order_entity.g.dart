// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderEntityImpl _$$OrderEntityImplFromJson(Map<String, dynamic> json) =>
    _$OrderEntityImpl(
      id: (json['id'] as num).toInt(),
      startPoint: json['startPoint'] as String,
      endPoint: json['endPoint'] as String,
      price: (json['price'] as num).toInt(),
      comment: json['comment'] as String?,
      status: json['status'] as String,
      hasRoute: json['hasRoute'] as bool,
      points: (json['points'] as List<dynamic>?)
          ?.map((e) => PointEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
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
      'points': instance.points,
    };
