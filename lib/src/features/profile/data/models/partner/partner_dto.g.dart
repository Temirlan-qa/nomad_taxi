// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partner_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PartnerDtoImpl _$$PartnerDtoImplFromJson(Map<String, dynamic> json) =>
    _$PartnerDtoImpl(
      id: (json['id'] as num).toInt(),
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      carModel: json['car_model'] as String,
      carNumber: json['car_number'] as String,
      townId: (json['town_id'] as num).toInt(),
      status: json['status'] as String,
      finance: FinanceDto.fromJson(json['finance'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PartnerDtoImplToJson(_$PartnerDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'car_model': instance.carModel,
      'car_number': instance.carNumber,
      'town_id': instance.townId,
      'status': instance.status,
      'finance': instance.finance,
    };
