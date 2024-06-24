// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'searched_order_address_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchedOrderAddressDtoImpl _$$SearchedOrderAddressDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchedOrderAddressDtoImpl(
      id: (json['id'] as num?)?.toInt(),
      town: json['town'] as String?,
      title: json['title'] as String?,
      lat: (json['lat'] as num?)?.toDouble(),
      lng: (json['lng'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$SearchedOrderAddressDtoImplToJson(
        _$SearchedOrderAddressDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'town': instance.town,
      'title': instance.title,
      'lat': instance.lat,
      'lng': instance.lng,
    };
