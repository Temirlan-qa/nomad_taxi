// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrdersDtoImpl _$$OrdersDtoImplFromJson(Map<String, dynamic> json) =>
    _$OrdersDtoImpl(
      orders: (json['orders'] as List<dynamic>)
          .map((e) => OrderDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OrdersDtoImplToJson(_$OrdersDtoImpl instance) =>
    <String, dynamic>{
      'orders': instance.orders,
    };
