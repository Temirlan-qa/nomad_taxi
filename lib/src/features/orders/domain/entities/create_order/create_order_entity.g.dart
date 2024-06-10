// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_order_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateOrderEntityImpl _$$CreateOrderEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateOrderEntityImpl(
      townId: json['townId'] as String,
      price: (json['price'] as num).toInt(),
      useBonus: (json['useBonus'] as num).toInt(),
      startPointLat: (json['startPointLat'] as num).toDouble(),
      startPointLng: (json['startPointLng'] as num).toDouble(),
      startPointTitle: json['startPointTitle'] as String,
      endPointLat: (json['endPointLat'] as num).toDouble(),
      endPointLng: (json['endPointLng'] as num).toDouble(),
      endPointTitle: json['endPointTitle'] as String,
    );

Map<String, dynamic> _$$CreateOrderEntityImplToJson(
        _$CreateOrderEntityImpl instance) =>
    <String, dynamic>{
      'townId': instance.townId,
      'price': instance.price,
      'useBonus': instance.useBonus,
      'startPointLat': instance.startPointLat,
      'startPointLng': instance.startPointLng,
      'startPointTitle': instance.startPointTitle,
      'endPointLat': instance.endPointLat,
      'endPointLng': instance.endPointLng,
      'endPointTitle': instance.endPointTitle,
    };
