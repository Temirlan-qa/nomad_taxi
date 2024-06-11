// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'find_town_by_location_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FindTownByLocationResponseDtoImpl
    _$$FindTownByLocationResponseDtoImplFromJson(Map<String, dynamic> json) =>
        _$FindTownByLocationResponseDtoImpl(
          status: json['status'] as String,
          data: TownDto.fromJson(json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$FindTownByLocationResponseDtoImplToJson(
        _$FindTownByLocationResponseDtoImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };
