// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerifyDataResponseImpl _$$VerifyDataResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$VerifyDataResponseImpl(
      accessToken: json['access_token'] as String,
      tokenType: json['token_type'] as String,
      expiresIn: (json['expires_in'] as num).toInt(),
    );

Map<String, dynamic> _$$VerifyDataResponseImplToJson(
        _$VerifyDataResponseImpl instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'token_type': instance.tokenType,
      'expires_in': instance.expiresIn,
    };
