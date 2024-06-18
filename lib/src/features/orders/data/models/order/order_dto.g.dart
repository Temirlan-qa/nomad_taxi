// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderDtoImpl _$$OrderDtoImplFromJson(Map<String, dynamic> json) =>
    _$OrderDtoImpl(
      id: (json['id'] as num).toInt(),
      startPoint: json['start_point'] as String,
      endPoint: json['end_point'] as String,
      price: (json['price'] as num).toInt(),
      comment: json['comment'] as String?,
      status: json['status'] as String?,
      hasRoute: json['has_route'] as bool? ?? false,
      createdAt: json['created_at'] as String? ?? '',
      payMethod: json['pay_method'] == null
          ? null
          : PayMethodDto.fromJson(json['pay_method'] as Map<String, dynamic>),
      waitingTime: (json['waiting_time'] as num?)?.toInt() ?? null,
      partner: json['partner'] == null
          ? null
          : PartnerDto.fromJson(json['partner'] as Map<String, dynamic>),
      phone: json['phone'] as String? ?? '',
      townId: (json['town_id'] as num?)?.toInt(),
      points: (json['points'] as List<dynamic>?)
              ?.map((e) => PointDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$OrderDtoImplToJson(_$OrderDtoImpl instance) =>
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
      'waiting_time': instance.waitingTime,
      'partner': instance.partner,
      'phone': instance.phone,
      'town_id': instance.townId,
      'points': instance.points,
    };
