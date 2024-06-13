// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderDtoImpl _$$OrderDtoImplFromJson(Map<String, dynamic> json) =>
    _$OrderDtoImpl(
      id: json['id'] as String,
      startPoint: json['start_point'] as String,
      endPoint: json['end_point'] as String,
      price: (json['price'] as num).toInt(),
      comment: json['comment'] as String?,
      status: json['status'] as String,
      hasRoute: json['has_route'] as bool,
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
    };
