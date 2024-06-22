// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'searched_order_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchedOrderAddressEntityImpl _$$SearchedOrderAddressEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchedOrderAddressEntityImpl(
      id: (json['id'] as num?)?.toInt(),
      town: json['town'] as String?,
      title: json['title'] as String?,
      lat: (json['lat'] as num?)?.toDouble(),
      lng: (json['lng'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$SearchedOrderAddressEntityImplToJson(
        _$SearchedOrderAddressEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'town': instance.town,
      'title': instance.title,
      'lat': instance.lat,
      'lng': instance.lng,
    };
