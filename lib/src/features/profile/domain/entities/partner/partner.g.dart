// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PartnerImpl _$$PartnerImplFromJson(Map<String, dynamic> json) =>
    _$PartnerImpl(
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      phone: json['phone'] as String,
      bankCardNumber: json['bank_card_number'] as String?,
      carModel: json['car_model'] as String,
      carNumber: json['car_number'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PartnerImplToJson(_$PartnerImpl instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'phone': instance.phone,
      'bank_card_number': instance.bankCardNumber,
      'car_model': instance.carModel,
      'car_number': instance.carNumber,
      'runtimeType': instance.$type,
    };

_$PartnerEmptyImpl _$$PartnerEmptyImplFromJson(Map<String, dynamic> json) =>
    _$PartnerEmptyImpl(
      empty: json['empty'] as bool? ?? false,
      sorted: json['sorted'] as bool? ?? false,
      unsorted: json['unsorted'] as bool? ?? false,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PartnerEmptyImplToJson(_$PartnerEmptyImpl instance) =>
    <String, dynamic>{
      'empty': instance.empty,
      'sorted': instance.sorted,
      'unsorted': instance.unsorted,
      'runtimeType': instance.$type,
    };
