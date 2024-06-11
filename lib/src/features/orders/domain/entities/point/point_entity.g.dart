// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'point_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PointEntityImpl _$$PointEntityImplFromJson(Map<String, dynamic> json) =>
    _$PointEntityImpl(
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
      title: json['title'] as String,
    );

Map<String, dynamic> _$$PointEntityImplToJson(_$PointEntityImpl instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
      'title': instance.title,
    };
