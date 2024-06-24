// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'town_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TownEntityImpl _$$TownEntityImplFromJson(Map<String, dynamic> json) =>
    _$TownEntityImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      status: json['status'] as String,
      lat: json['lat'] as String,
      lng: json['lng'] as String,
      radius: (json['radius'] as num).toInt(),
      franchiseLink: json['franchiseLink'] as String,
      languageCode: json['languageCode'] as String?,
      support: json['support'] == null
          ? null
          : SupportEntity.fromJson(json['support'] as Map<String, dynamic>),
      insideCity: json['insideCity'] == null
          ? null
          : InsideCityEntity.fromJson(
              json['insideCity'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TownEntityImplToJson(_$TownEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'status': instance.status,
      'lat': instance.lat,
      'lng': instance.lng,
      'radius': instance.radius,
      'franchiseLink': instance.franchiseLink,
      'languageCode': instance.languageCode,
      'support': instance.support,
      'insideCity': instance.insideCity,
    };
