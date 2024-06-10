// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'point_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PointDtoImpl _$$PointDtoImplFromJson(Map<String, dynamic> json) =>
    _$PointDtoImpl(
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
      title: json['title'] as String,
    );

Map<String, dynamic> _$$PointDtoImplToJson(_$PointDtoImpl instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
      'title': instance.title,
    };
