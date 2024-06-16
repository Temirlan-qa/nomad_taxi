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
      points: (json['points'] as List<dynamic>)
          .map((e) => PointEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      useBonus: (json['useBonus'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CreateOrderEntityImplToJson(
        _$CreateOrderEntityImpl instance) =>
    <String, dynamic>{
      'townId': instance.townId,
      'price': instance.price,
      'points': instance.points,
      'useBonus': instance.useBonus,
      'runtimeType': instance.$type,
    };

_$CreateOrderEntityEmptyImpl _$$CreateOrderEntityEmptyImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateOrderEntityEmptyImpl(
      townId: json['townId'] as String? ?? '8',
      price: (json['price'] as num?)?.toInt() ?? 777,
      points: (json['points'] as List<dynamic>?)
              ?.map((e) => PointEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [
            PointEntity(lat: 42.2222, lng: 77.2222, title: 'Bay'),
            PointEntity(lat: 32.3333, lng: 66.3333, title: 'Abay')
          ],
      useBonus: (json['useBonus'] as num?)?.toInt() ?? 1,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CreateOrderEntityEmptyImplToJson(
        _$CreateOrderEntityEmptyImpl instance) =>
    <String, dynamic>{
      'townId': instance.townId,
      'price': instance.price,
      'points': instance.points,
      'useBonus': instance.useBonus,
      'runtimeType': instance.$type,
    };
