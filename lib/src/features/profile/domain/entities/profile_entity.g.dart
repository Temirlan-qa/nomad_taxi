// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileEntityImpl _$$ProfileEntityImplFromJson(Map<String, dynamic> json) =>
    _$ProfileEntityImpl(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      phone: json['phone'] as String,
      id: (json['id'] as num).toInt(),
      languageCode: json['languageCode'] as String,
      isBlocked: (json['isBlocked'] as num).toInt(),
      bonus: (json['bonus'] as num).toInt(),
      partner: Partner.fromJson(json['partner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProfileEntityImplToJson(_$ProfileEntityImpl instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'phone': instance.phone,
      'id': instance.id,
      'languageCode': instance.languageCode,
      'isBlocked': instance.isBlocked,
      'bonus': instance.bonus,
      'partner': instance.partner,
    };
