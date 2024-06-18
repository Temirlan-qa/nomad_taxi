// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promocode_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PromocodeResponseDtoImpl _$$PromocodeResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$PromocodeResponseDtoImpl(
      success: json['success'] as bool,
      data: PromocodeDto.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PromocodeResponseDtoImplToJson(
        _$PromocodeResponseDtoImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
    };
