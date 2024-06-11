// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'available_languages_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AvailableLanguagesResponseDtoImpl
    _$$AvailableLanguagesResponseDtoImplFromJson(Map<String, dynamic> json) =>
        _$AvailableLanguagesResponseDtoImpl(
          status: json['status'] as String,
          data: (json['data'] as List<dynamic>)
              .map((e) => LanguageDto.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$AvailableLanguagesResponseDtoImplToJson(
        _$AvailableLanguagesResponseDtoImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };
