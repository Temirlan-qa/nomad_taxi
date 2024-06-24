// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'town_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TownDtoImpl _$$TownDtoImplFromJson(Map<String, dynamic> json) =>
    _$TownDtoImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      status: json['status'] as String,
      lat: json['lat'] as String,
      lng: json['lng'] as String,
      radius: (json['radius'] as num).toInt(),
      languageCode: json['language_code'] as String?,
      support: json['support'] == null
          ? null
          : SupportDto.fromJson(json['support'] as Map<String, dynamic>),
      insideCity: json['inside_city'] == null
          ? null
          : InsideCityDto.fromJson(json['inside_city'] as Map<String, dynamic>),
      franchiseLink: json['franchise_link'] as String,
    );

Map<String, dynamic> _$$TownDtoImplToJson(_$TownDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'status': instance.status,
      'lat': instance.lat,
      'lng': instance.lng,
      'radius': instance.radius,
      'language_code': instance.languageCode,
      'support': instance.support,
      'inside_city': instance.insideCity,
      'franchise_link': instance.franchiseLink,
    };
