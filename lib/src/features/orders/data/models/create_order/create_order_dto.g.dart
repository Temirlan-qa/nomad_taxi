// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_order_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateOrderDtoImpl _$$CreateOrderDtoImplFromJson(Map<String, dynamic> json) =>
    _$CreateOrderDtoImpl(
      townId: (json['town_id'] as num?)?.toInt() ?? 8,
      price: (json['price'] as num).toInt(),
      points: (json['points'] as List<dynamic>)
          .map((e) => PointDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      useBonus: (json['use_bonus'] as num).toInt(),
    );

Map<String, dynamic> _$$CreateOrderDtoImplToJson(
        _$CreateOrderDtoImpl instance) =>
    <String, dynamic>{
      'town_id': instance.townId,
      'price': instance.price,
      'points': instance.points,
      'use_bonus': instance.useBonus,
    };
