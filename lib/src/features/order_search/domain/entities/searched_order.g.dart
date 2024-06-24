// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'searched_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchedOrderEntityImpl _$$SearchedOrderEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchedOrderEntityImpl(
      status: json['status'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) =>
              SearchedOrderAddressEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SearchedOrderEntityImplToJson(
        _$SearchedOrderEntityImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };
