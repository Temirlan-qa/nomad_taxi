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
      createdAt: json['createdAt'] as String,
      payMethod:
          PayMethodEntity.fromJson(json['payMethod'] as Map<String, dynamic>),
      phone: json['phone'] as String,
      partner: json['partner'] == null
          ? null
          : Partner.fromJson(json['partner'] as Map<String, dynamic>),
      waitingTime: (json['waitingTime'] as num?)?.toInt(),
      townId: (json['townId'] as num).toInt(),
      points: (json['points'] as List<dynamic>)
          .map((e) => PointEntity.fromJson(e as Map<String, dynamic>))
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
      'createdAt': instance.createdAt,
      'payMethod': instance.payMethod,
      'phone': instance.phone,
      'partner': instance.partner,
      'waitingTime': instance.waitingTime,
      'townId': instance.townId,
      'points': instance.points,
    };
