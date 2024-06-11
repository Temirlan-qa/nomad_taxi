// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'available_languages_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AvailableLanguagesResponseImpl _$$AvailableLanguagesResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AvailableLanguagesResponseImpl(
      status: json['status'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => LanguageEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AvailableLanguagesResponseImplToJson(
        _$AvailableLanguagesResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };
