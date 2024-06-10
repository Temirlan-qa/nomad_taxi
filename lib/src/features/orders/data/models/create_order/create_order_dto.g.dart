// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_order_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateOrderDtoImpl _$$CreateOrderDtoImplFromJson(Map<String, dynamic> json) =>
    _$CreateOrderDtoImpl(
      townId: json['town_id'] as String,
      price: (json['price'] as num).toInt(),
      startPointLat: (json['points[0][lat]'] as num).toDouble(),
      startPointLng: (json['points[0][lng]'] as num).toDouble(),
      startPointTitle: json['points[0][title]'] as String,
      endPointLat: (json['points[1][lat]'] as num).toDouble(),
      endPointLng: (json['points[1][lng]'] as num).toDouble(),
      endPointTitle: json['points[1][title]'] as String,
      useBonus: (json['use_bonus'] as num).toInt(),
    );

Map<String, dynamic> _$$CreateOrderDtoImplToJson(
        _$CreateOrderDtoImpl instance) =>
    <String, dynamic>{
      'town_id': instance.townId,
      'price': instance.price,
      'points[0][lat]': instance.startPointLat,
      'points[0][lng]': instance.startPointLng,
      'points[0][title]': instance.startPointTitle,
      'points[1][lat]': instance.endPointLat,
      'points[1][lng]': instance.endPointLng,
      'points[1][title]': instance.endPointTitle,
      'use_bonus': instance.useBonus,
    };
