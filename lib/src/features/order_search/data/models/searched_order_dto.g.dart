// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'searched_order_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchedOrderDtoImpl _$$SearchedOrderDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchedOrderDtoImpl(
      status: json['status'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) =>
              SearchedOrderAddressDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SearchedOrderDtoImplToJson(
        _$SearchedOrderDtoImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };
