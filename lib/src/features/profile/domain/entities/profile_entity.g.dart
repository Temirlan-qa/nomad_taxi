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
      languageCode: json['languageCode'] as String?,
      isBlocked: (json['isBlocked'] as num?)?.toInt(),
      bonus: (json['bonus'] as num?)?.toInt(),
      fcmToken: json['fcmToken'] as String?,
      pId: (json['pId'] as num?)?.toInt(),
      pFirstName: json['pFirstName'] as String?,
      pLastName: json['pLastName'] as String?,
      pCarModel: json['pCarModel'] as String?,
      pCarNumber: json['pCarNumber'] as String?,
      pTownId: (json['pTownId'] as num?)?.toInt(),
      pStatus: json['pStatus'] as String?,
      pBalance: (json['pBalance'] as num?)?.toInt(),
      pBonus: (json['pBonus'] as num?)?.toInt(),
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
      'fcmToken': instance.fcmToken,
      'pId': instance.pId,
      'pFirstName': instance.pFirstName,
      'pLastName': instance.pLastName,
      'pCarModel': instance.pCarModel,
      'pCarNumber': instance.pCarNumber,
      'pTownId': instance.pTownId,
      'pStatus': instance.pStatus,
      'pBalance': instance.pBalance,
      'pBonus': instance.pBonus,
    };
