// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerifyRequestImpl _$$VerifyRequestImplFromJson(Map<String, dynamic> json) =>
    _$VerifyRequestImpl(
      userId: json['user_id'] as String,
      code: json['code'] as String,
    );

Map<String, dynamic> _$$VerifyRequestImplToJson(_$VerifyRequestImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'code': instance.code,
    };
