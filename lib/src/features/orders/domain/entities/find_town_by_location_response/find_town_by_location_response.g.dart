// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'find_town_by_location_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FindTownByLocationResponseImpl _$$FindTownByLocationResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$FindTownByLocationResponseImpl(
      status: json['status'] as String,
      data: TownEntity.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FindTownByLocationResponseImplToJson(
        _$FindTownByLocationResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };
