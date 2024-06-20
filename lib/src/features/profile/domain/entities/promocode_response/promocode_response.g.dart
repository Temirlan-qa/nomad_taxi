// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promocode_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PromocodeResponseImpl _$$PromocodeResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PromocodeResponseImpl(
      success: json['success'] as bool,
      data: PromocodeEntity.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PromocodeResponseImplToJson(
        _$PromocodeResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
    };
