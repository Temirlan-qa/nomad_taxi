// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PartnerImpl _$$PartnerImplFromJson(Map<String, dynamic> json) =>
    _$PartnerImpl(
      id: (json['id'] as num?)?.toInt(),
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      carModel: json['car_model'] as String?,
      carNumber: json['car_number'] as String?,
      townId: (json['town_id'] as num?)?.toInt(),
      status: json['status'] as String?,
      finance: json['finance'] == null
          ? null
          : Finance.fromJson(json['finance'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PartnerImplToJson(_$PartnerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'car_model': instance.carModel,
      'car_number': instance.carNumber,
      'town_id': instance.townId,
      'status': instance.status,
      'finance': instance.finance,
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
