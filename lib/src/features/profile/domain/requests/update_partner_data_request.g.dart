// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_partner_data_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdatePartnerDataRequestImpl _$$UpdatePartnerDataRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdatePartnerDataRequestImpl(
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      carModel: json['car_model'] as String,
      carNumber: json['car_number'] as String,
      townId: (json['town_id'] as num).toInt(),
    );

Map<String, dynamic> _$$UpdatePartnerDataRequestImplToJson(
        _$UpdatePartnerDataRequestImpl instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'car_model': instance.carModel,
      'car_number': instance.carNumber,
      'town_id': instance.townId,
    };
