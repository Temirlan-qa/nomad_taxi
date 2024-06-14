// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderEntityImpl _$$OrderEntityImplFromJson(Map<String, dynamic> json) =>
    _$OrderEntityImpl(
      id: (json['id'] as num).toInt(),
      startPoint: json['start_point'] as String,
      endPoint: json['end_point'] as String,
      price: (json['price'] as num).toInt(),
      comment: json['comment'] as String?,
      status: json['status'] as String,
      hasRoute: json['has_route'] as bool? ?? false,
      createdAt: json['created_at'] as String,
      payMethod:
          PayMethodEntity.fromJson(json['pay_method'] as Map<String, dynamic>),
      phone: json['phone'] as String,
      partner: json['partner'] == null
          ? null
          : Partner.fromJson(json['partner'] as Map<String, dynamic>),
      waitingTime: (json['waitingTime'] as num?)?.toInt(),
      townId: (json['town_id'] as num).toInt(),
      points: (json['points'] as List<dynamic>)
          .map((e) => PointEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OrderEntityImplToJson(_$OrderEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'start_point': instance.startPoint,
      'end_point': instance.endPoint,
      'price': instance.price,
      'comment': instance.comment,
      'status': instance.status,
      'has_route': instance.hasRoute,
      'created_at': instance.createdAt,
      'pay_method': instance.payMethod,
      'phone': instance.phone,
      'partner': instance.partner,
      'waitingTime': instance.waitingTime,
      'town_id': instance.townId,
      'points': instance.points,
    };
