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
      status: json['status'] as String?,
      hasRoute: json['hasRoute'] as bool? ?? false,
      createdAt: json['createdAt'] as String? ?? '',
      payMethod: json['pay_method'] == null
          ? null
          : PayMethodEntity.fromJson(
              json['pay_method'] as Map<String, dynamic>),
      phone: json['phone'] as String? ?? '',
      partner: json['partner'] == null
          ? null
          : Partner.fromJson(json['partner'] as Map<String, dynamic>),
      waitingTime: (json['waitingTime'] as num?)?.toInt(),
      townId: json['townId'] as String? ?? '',
      points: (json['points'] as List<dynamic>?)
              ?.map((e) => PointEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
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
      'pay_method': instance.payMethod,
      'phone': instance.phone,
      'partner': instance.partner,
      'waitingTime': instance.waitingTime,
      'townId': instance.townId,
      'points': instance.points,
    };
