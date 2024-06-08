// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileDtoImpl _$$ProfileDtoImplFromJson(Map<String, dynamic> json) =>
    _$ProfileDtoImpl(
      firstName: json['first_name'] as String? ?? '',
      lastName: json['last_name'] as String? ?? '',
      phone: json['phone'] as String,
      id: (json['id'] as num).toInt(),
      languageCode: json['language_code'] as String?,
      isBlocked: (json['is_blocked'] as num?)?.toInt(),
      fcmToken: json['fcm_token'] as String?,
      bonus: (json['bonus'] as num?)?.toInt(),
      partner: json['partner'] == null
          ? null
          : PartnerDto.fromJson(json['partner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProfileDtoImplToJson(_$ProfileDtoImpl instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'phone': instance.phone,
      'id': instance.id,
      'language_code': instance.languageCode,
      'is_blocked': instance.isBlocked,
      'fcm_token': instance.fcmToken,
      'bonus': instance.bonus,
      'partner': instance.partner,
    };
